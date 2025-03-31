# This file was generated, do not modify it. # hide
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