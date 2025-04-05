# This file was generated, do not modify it. # hide
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
		k = (I(nstates-1)-Q)\ones(nstates-1)
	else
		k = [1/(I(nstates-1)-Q)[1]]
	end
	slz = dot(k,p₀[2:end])
	if verbose println("done!") end
	return slz
end
F(12,6,verbose=true,plot_graph=false)