using JuMP
using Ipopt
using Plots
using Random

Random.seed!(42)

# Example data for nodes (V), arcs (A), and demands (K)
n_nodes = 5
V = 1:n_nodes  # Nodes
A = [(i, j) for i in 1:n_nodes for j in 1:n_nodes if i != j]  # Arcs
K = [(1, 4), (2, 3), (2, 4), (2, 5)]  # Origin-destination pairs
d = 100*ones(length(K))  # Demand for each origin-destination pair

# Free flow travel time for each arc (FFTi) and congestions u_ij
FFTi = Dict{Tuple{Int, Int}, Float64}()
u = Dict{Tuple{Int, Int}, Float64}()

for arc in A
    FFTi[arc] = rand(1:10)  # Random travel time between 1 and 10
    u[arc] = rand(80:120)  # Random congestion threshold between 80 and 120
end

# Create the optimization model
model = Model(Ipopt.Optimizer)

# Define variables: x[k,i,j] for each demand pair (k) and arc (i,j)
@variable(model, x[1:length(K), 1:length(A)] >= 0)

# Objective: Minimize total travel time
@objective(model, Min, sum(FFTi[A[j]] * sum(x[k, j] for k in 1:length(K)) for j in 1:length(A)))

# Flow conservation constraints
for k in 1:length(K)
    s_k, t_k = K[k]
    for i in V
        if i == s_k
            @constraint(model, sum(x[k, j] for j in 1:length(A) if A[j][1] == i) - sum(x[k, j] for j in 1:length(A) if A[j][2] == i) == d[k])
        elseif i == t_k
            @constraint(model, sum(x[k, j] for j in 1:length(A) if A[j][1] == i) - sum(x[k, j] for j in 1:length(A) if A[j][2] == i) == -d[k])
        else
            @constraint(model, sum(x[k, j] for j in 1:length(A) if A[j][1] == i) - sum(x[k, j] for j in 1:length(A) if A[j][2] == i) == 0)
        end
    end
end

# Congestion threshold constraints
for j in 1:length(A)
    @constraint(model, sum(x[k, j] for k in 1:length(K)) <= u[A[j]])
end

# Solve the model
optimize!(model)

# Extract results
x_opt = value.(x)

# Print results
for k in 1:length(K)
    println("Traffic flow for demand pair $(K[k]):")
    for j in 1:length(A)
        println("Arc $(A[j]): $(x_opt[k, j]) cars")
    end
end


# Plot the traffic network with flows
theta = 2 * π * (0:n_nodes-1) / n_nodes
x_plot = 1 * cos.(theta)
y_plot = 1 * sin.(theta)

arc_plot = [(x_plot[i], x_plot[j], y_plot[i], y_plot[j]) for (i, j) in A]

# Generate a list of colors based on the number of demand pairs
colors = [RGB(rand(), rand(), rand()) for _ in 1:length(K)]

# Function to slightly shift points for better visualization
function shift_points(x1, y1, x2, y2, shift_factor)
    dx = x2 - x1
    dy = y2 - y1
    dist = sqrt(dx^2 + dy^2)
    shift_x = -dy / dist * shift_factor
    shift_y = dx / dist * shift_factor
    return (x1 + shift_x, y1 + shift_y, x2 + shift_x, y2 + shift_y)
end

plot()
for j in 1:length(A)
    x1, x2, y1, y2 = arc_plot[j]
    for k in 1:length(K)
        flow = x_opt[k, j]
        if flow > 0
            sx1, sy1, sx2, sy2 = shift_points(x1, y1, x2, y2, 0.04 * k)
            plot!([sx1, sx2], [sy1, sy2], arrow=:arrow, label="",
                color=colors[k], linewidth=2,# + flow/50,
                alpha=0.6)
            mid_x = (sx1 + sx2) / 2
            mid_y = (sy1 + sy2) / 2
            annotate!(mid_x, mid_y, text("$(round(Int64,flow))", 8, colors[k]))
        end
    end
end

scatter!(x_plot, y_plot, label="Nodes", legend=:outertopleft)
annotate!(x_plot, y_plot, string.(V))
for k in 1:length(K)
    label = "Path $(K[k][1])→$(K[k][2])"
    plot!([], [], color=colors[k], label=label)
end

title!("Traffic Network with Flows")
savefig("traffic_problem.svg")