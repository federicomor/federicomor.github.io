using JuMP
using Ipopt
using Plots

# Define the number of vertices
n = 5 # You can change this to the desired number of vertices

# Create the optimization model
model = Model(Ipopt.Optimizer)

# Define variables: r and phi for each vertex
@variable(model, r[1:n] >= 0)
@variable(model, 0 <= phi[1:n] <= 2π)

# Define the objective function (maximize area)
@objective(model, Max,
    0.5 * sum(r[i] * r[i+1] * sin(phi[i+1] - phi[i]) for i in 1:n-1) +
    0.5 * r[n] * r[1] * sin(2π - phi[n] + phi[1])
)

# Define the constraints for the distance between each pair of vertices
@constraint(model, [i=1:n, j=1:n; j > i], r[i]^2 + r[j]^2 - 2 * r[i] * r[j] * cos(phi[i] - phi[j]) <= 1)

# Define the constraints for ordering angles
@constraint(model, [i=1:n-1], phi[i] <= phi[i+1])

# Solve the model
optimize!(model)

# Get the optimal values for r and phi
r_opt = value.(r)
phi_opt = value.(phi)

# Convert polar coordinates to Cartesian coordinates for plotting
x = r_opt .* cos.(phi_opt)
y = r_opt .* sin.(phi_opt)

# Add the first vertex to close the polygon
x = vcat(x, x[1])
y = vcat(y, y[1])

println("Case n=$n")
for i in 1:length(x)
    println("P_$i = (",round(x[i],digits=4), ", ", round(y[i],digits=4),")")
end

# Plot the resulting polygon
plot(x, y, seriestype=:shape, label="Optimal Polygon", fillalpha=0.3, aspect_ratio=:equal, legend=false)
scatter!(x, y, label="Vertices")
title!("Optimal Polygon with n=$n Vertices")

# Function to generate points on a circle
function circle_points(center_x, center_y, radius, num_points=100)
    theta = range(0, 2*pi, length=num_points)
    cx = center_x .+ radius .* cos.(theta)
    cy = center_y .+ radius .* sin.(theta)
    return cx, cy
end
# Plot a circle of radius 1 from each vertex
for i in 1:n
    circle_x, circle_y = circle_points(x[i], y[i], 1)
    plot!(circle_x, circle_y, label=false, linestyle=:solid, color=:red, alpha=0.3)
end

xlims!(minimum(x)-0.2, maximum(x)+0.2)
ylims!(minimum(y)-0.2, maximum(y)+0.2)

savefig("output/traffic_$n.svg") # hide