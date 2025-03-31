# This file was generated, do not modify it.

using Random, LinearAlgebra
using SparseArrays
using DataStructures
using IterativeSolvers
using Plots, GraphRecipes
Random.seed!(31032025);

# n bowls, m balls
function simulate_F(n::Int, m::Int; num_trials::Int=10000, verbose=false)
    total_moves = 0
	if verbose num_trials = 1 end

    for _ in 1:num_trials
        # random initial distribution of balls
        balls = rand(1:n, m) # array of size m, each element in 1:n
        # so that each ball i is assigned to the bowl given by balls[i]
        moves = 0

        while length(unique(balls)) > 1 # stop when all balls are in the same bowl
        # and they will be in the same bowl when all the indexes of balls vector will be equal
            ball_idx = rand(1:m) # pick a ball at random
            direction = rand([-1, 1]) # pick a direction (-1 for counterclockwise, 1 for clockwise)
			if verbose println("Balls are in bowls: $balls (selected ball: $ball_idx, will move by: $direction)") end
            balls[ball_idx] = mod1(balls[ball_idx] + direction, n) # move the ball
            # this changes the bowl attribution of ball ball_idx, using mod1 as for the circular structure
            moves += 1
        end
		total_moves += moves
		if verbose
			println("Balls are in bowls: $balls")
			println("Total moves: $total_moves")
		end
    end
    return total_moves / num_trials  # estimate of F(n, m)
end

simulate_F(2, 3, num_trials = 20_000) # soluzione esatta: 9/4 = 2.25

simulate_F(2, 3, verbose=true)

# generate all possible states of where balls can be located in the bowls
function get_all_states(m::Int, n::Int; verbose=false)
	if m == 1
		return [[n]]
	end
	ret = []
	for i in 0:n
		if verbose @show i end
		tmp = get_all_states(m - 1, n - i, verbose=false)
		for t in tmp
			if verbose println("\tt=$t") end
			push!(t, i)
			push!(ret, t)
		end
	end
	return ret
end
get_all_states(3,2,verbose=true)

# reduce states to their minimal representation, ie accounting for simmetries
function min_state(best::Vector; verbose=false)
    tmp = copy(best)
    rtmp = reverse(copy(best))
	if verbose @show tmp,rtmp,best end
    for i in 1:length(best)
        tmp = circshift(tmp, 1)
        if tmp < best
            best = copy(tmp)
        end
        rtmp = circshift(rtmp, 1)
        if rtmp < best
            best = copy(rtmp)
        end
		if verbose @show tmp,rtmp,best end
    end
    return best
end
min_state([1,2,0,0,1],verbose=true)'

# compute initial probabilities for the states
function get_states(bowls::Int, balls::Int; verbose=false)
	allStates = get_all_states(bowls, balls)
	multiStates = OrderedDict{Vector{Real},Int}()
	states = Vector{Vector{Int64}}()
	for s in allStates
		min_s = min_state(s)
		multiStates[min_s] = get(multiStates, min_s, 0) + 1
		if !(min_s in states)
			push!(states, min_s)
		end
		if verbose @show multiStates end
	end
	prob = factorial(balls) / (bowls ^ balls)
	if verbose
		@show states
		@show prob
	end
	init_probs = Float64[]
	for x in states
		if verbose print(x) end
		p = multiStates[x] * prob
		for y in x
			p *= 1 / factorial(y)
		end
		if verbose print(" -> p: $p") end
		push!(init_probs, p)
		if verbose println() end
	end
	return states, init_probs
end
states, probs = get_states(5,2,verbose=true);

# check if a state is absorbing
function is_absorbing(state::Vector)
	return sum(state .== 0) == length(state)-1
end

states, probs = get_states(4,2)
for st in states
	println(st, " -> is_absorbing? ", is_absorbing(st))
end

begin
	bowls = 4
	balls = 3
	println("Working with $bowls bowls and $balls balls.")
	println("All states and minimal representations:")
	for v in get_all_states(bowls,balls)
		println(v," => ", min_state(v))
	end
	println("Initial probabilities:")
	states, init_probs = get_states(bowls, balls,verbose=false)
	for i in 1:length(states)
		println(states[i], " => ", init_probs[i])
	end
end

nbowls = 4; nballs = 5
# definiamo gli stati e le probabilità iniziali
states, p₀ = get_states(nbowls, nballs)
# salviamo l'indice di ogni stato, per accederci con 1, 2, ecc nella matrice P
states_dict = Dict(state => i for (i, state) in enumerate(states))
nstates = length(states);

P = zeros(nstates, nstates)
for st in states
	if !is_absorbing(st)
		for i in 1:nbowls
			if st[i] > 0
				# where can the current ball move?

				# can move with direction -1
				st_new_m1 = copy(st)
				st_new_m1[i] -= 1; st_new_m1[mod1(i-1,nbowls)] +=1 # move by -1
				st_new_m1 = min_state(st_new_m1) # retrieve minimal configuration
				# or with direction 1
				st_new_p1 = copy(st)
				st_new_p1[i] -= 1; st_new_p1[mod1(i+1,nbowls)] +=1 # move by +1
				st_new_p1 = min_state(st_new_p1) # retrieve minimal configuration

				# update P matrix entries
				P[states_dict[st],states_dict[st_new_m1]] += st[i]
				P[states_dict[st],states_dict[st_new_p1]] += st[i]
			end
		end
	else
		P[states_dict[st],states_dict[st]] = 1
	end
end
# normalize the matrix by dividing each value by the sum of its row values
Int.(P)

for i in 1:size(P)[1]
	P[i,:] = P[i,:]/sum(P[i,:])
end
P

# https://docs.juliaplots.org/stable/generated/graph_attributes/#graph_attributes
graphplot(P,
	names=join.(states),
	nodesize = 0.2,
	curvature_scalar=0.1,
	node_shape=:circle,
	# edge_label = P,
	# edgelabel_offset = 0,
	fontsize = 4,
	self_edge_size = 0.12,
	method=:circular,
	axis_buffer=0.2)
savefig(joinpath(@OUTPUT, "mc_graph_.svg")); # hide

# https://en.wikipedia.org/wiki/Absorbing_Markov_chain
Q = P[2:end,2:end]
if size(Q)[1] > 1 # c'è davvero un sistema da risolvere
	k = (I(nstates-1)-Q)\ones(nstates-1) # metodo classico
	# k = bicgstabl(I(nstates-1)-Q, ones(nstates-1)) # biconjugate gradient method
else
	k = [1/(I(nstates-1)-Q)[1]]
end

slz = dot(k,p₀[2:end])

6875/24

function F(nbowls, nballs; verbose=false, plot_graph=false)
	if verbose println("Deriving states and initial probabilities") end
	states, p₀ = get_states(nbowls, nballs)
	states_dict = Dict(state => i for (i, state) in enumerate(states))
	nstates = length(states)
	P = spzeros(nstates, nstates)
	if verbose println("Assembling transition matrix") end
	for st in states
		if !is_absorbing(st)
			for i in 1:nbowls
				if st[i] > 0
					# where can the current ball move?
					# can move with direction -1
					st_new_m1 = copy(st)
					st_new_m1[i] -= 1; st_new_m1[mod1(i-1,nbowls)] +=1 # move by -1
					st_new_m1 = min_state(st_new_m1) # retrieve minimal configuration
					# or with direction 1
					st_new_p1 = copy(st)
					st_new_p1[i] -= 1; st_new_p1[mod1(i+1,nbowls)] +=1 # move by +1
					st_new_p1 = min_state(st_new_p1) # retrieve minimal configuration
					# update P matrix entries
					P[states_dict[st],states_dict[st_new_m1]] += st[i]
					P[states_dict[st],states_dict[st_new_p1]] += st[i]
				end
			end
		else
			P[states_dict[st],states_dict[st]] = 1
		end
	end
	# normalize the matrix by dividing each value by the sum of its row values
	for i in 1:size(P)[1]
		P[i,:] = P[i,:]/sum(P[i,:])
	end
	if verbose
		println("Let's have a view of the sparsity of P")
		# with pure text output:
		# show(stdout,"text/plain",P)
		# SparseArrays._show_with_braille_patterns(stdout, P)
		# with a real plot:
		spy(P)
		savefig(joinpath(@OUTPUT, "P_sparsity.svg")); # hide
	end
	if plot_graph
		println("Plotting MC graph")
		graphplot(P,
		names=join.(states),
		nodesize = 0.2,
		curvature_scalar=0.1,
		node_shape=:circle,
		# edge_label = P,
		# edgelabel_offset = 0,
		fontsize = 4,
		self_edge_size = 0.12,
		method=:circular,
		axis_buffer=0.2)
		savefig("mc_graph_$(nbowls)_$(nballs).svg"); # hide
	end
	Q = P[2:end,2:end]
	if verbose println("Solving the linear system") end
	if size(Q)[1] > 1
		# k = bicgstabl(I(nstates-1)-Q, ones(nstates-1))
		k = (I(nstates-1)-Q)\ones(nstates-1)
	else
		k = [1/(I(nstates-1)-Q)[1]]
	end
	slz = dot(k,p₀[2:end])
	if verbose println("done!") end
	return slz
end
F(12,6,verbose=true,plot_graph=false)

function G(N,M)
	S = 0
	for n in 2:N, m in 2:M
		println("(n,m)=($n,$m)")
		@time S += F(n,m)
		println("")
	end
	println("done!")
	return S
end

# G(12,12) risolve il problema
G(4,4); # giusto un esempio

@time F(10,10) # altro esempio di quanto ci mette il codice con n ed m altini
