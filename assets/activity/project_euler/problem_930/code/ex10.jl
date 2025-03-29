# This file was generated, do not modify it. # hide
######### ACTUAL SOLVER #########
#= Steps:
1. enumerate the states, maybe divide between transient and recurrent/absorbing
2. build the transition matrix by counting the possible moves from each state, and then normalizing
3. solve the system for the absorbing time
4. print the answer
=#

nbowls = 4; nballs = 5
# definiamo gli stati e le probabilità iniziali
states, p₀ = get_states(nbowls, nballs)
# salviamo l'indice di ogni stato, per accederci con 1, 2, ecc nella matrice P
states_dict = Dict(state => i for (i, state) in enumerate(states))
nstates = length(states)

# definiamo e popoliamo P
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
P