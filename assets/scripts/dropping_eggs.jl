function the_egg_breaks(testing_floor, critical_floor)
	return testing_floor>critical_floor
end

function print_summary(eggs::Integer,floor::Integer,steps::Integer,jump_size::Integer,solution)
	println("jump size = $(rpad(jump_size,2)), ",
			"🏯=$(rpad(string(floor),3)), ",
			"🥚=$(rpad(string(eggs),2)), ",
			"🪜 =$(rpad(string(steps),2))")
end

function foundable(solution::Vector, verbose=false)
	# if verbose println(join(map(string, solution))); end
	# 2 was the default value
	# 1 is for floors where the egg breaks
	# 0 is for floors where the egg does not break
	return occursin("01",join(map(string, solution))) || join(map(string, solution)) == repeat('0',100)
end


function stratk(divs_strat::Vector, critical_floor::Integer, verbose::Bool; decrement=true)
	solution = 2 .* ones(Int,100)
	eggs = length(divs_strat)
	steps = 0
	strats = reverse(copy(divs_strat))
	previous_floor = 0
	current_floor = strats[end]
	jump_size = strats[eggs]

	while !foundable(solution,verbose) && steps<=100
		# if eggs>1
			interval_focus = findlast(x->x=='2',join(map(string, solution))) - 
							 findfirst(x->x=='2',join(map(string, solution))) + 1
			# @show interval_focus+1
			# @assert jump_size*(jump_size+1) / 2 >= interval_focus "Provide a larger strategy step for the case with $eggs eggs"
			# jump_size*(jump_size+1) / 2 < interval_focus && return NaN
		# end
		eggs<1 && return NaN
		jump_size<1 && return NaN
		current_floor<1 && return NaN
		# current_floor=min(current_floor,100)

		if isnothing(findlast(x->x=='1',join(map(string,solution))))
			max_index = 100
		else
			max_index = findlast(x->x=='1',join(map(string,solution)))-1
		end
		current_floor=min(current_floor,max_index)
	
		if the_egg_breaks(current_floor, critical_floor)
			eggs -= 1
			steps += 1
			solution[current_floor:end] .= 1
			if verbose print_summary(eggs,current_floor,steps,jump_size,solution); end
			# current_floor = current_floor - jump_size +1
			current_floor = previous_floor +1
			jump_size = eggs>=1 ? strats[eggs] : 1
		else
			solution[1:current_floor] .= 0
			steps += 1
			if verbose print_summary(eggs,current_floor,steps,jump_size,solution); end
			if (eggs>1 || jump_size>1) && decrement jump_size -= 1 end
			# @show interval_focus
			previous_floor = current_floor
			current_floor += jump_size
			# TODO (maybe): fix the useless long jump if few slots remain
			# eg. why do +7 if we are in [95,100]
			# current_floor += min(jump_size,Int64(floor(interval_focus/2)))
		end
	end
	return steps
end


stratk([25,1],99,true,decrement=false)
stratk([18,7,1],58,true)

stratk([14,1],41,true,decrement=false)
stratk([14,1],41,true,decrement=true)

stratk([18,7,1],58,true,decrement=false)
stratk([18,7,1],58,true,decrement=true)


############# 2 eggs #############
begin
worst_case = 0
strat_vector = [14,1]
decrement = false
for critical_floor in 1:100
	current_case = stratk(strat_vector,critical_floor,false,decrement=decrement)
	worst_case = max(worst_case,current_case)
	@show critical_floor,current_case
end
println("With $(length(strat_vector)) eggs, using vector $strat_vector as strategy, we need $worst_case steps in the worst case.")
end

for i in 14:20
	decrement = true
	strat_vector=[i,1]
	worst_case = 0
	avg_case = 0
	best_case = 0
	for critical_floor in 1:100
		current_case = stratk(strat_vector,critical_floor,false,decrement=decrement)
		if !isnan(current_case)
			worst_case = max(worst_case,current_case)
			avg_case += current_case
			best_case = min(worst_case,current_case)
		end
	end
	avg_case /= 100
	println("""
		With $(length(strat_vector)) eggs, using vector $strat_vector as strategy and decrement=$decrement, we need
		- $worst_case steps in the worst case
		- $avg_case steps in the average case
		- $best_case steps in the best case
		""")
end


############# 3 eggs #############
worst_case = 0
strat_vector = [16,8,1]
for critical_floor in 1:100
	global worst_case = max(worst_case,stratk(strat_vector,critical_floor,false))
end
println("With $(length(strat_vector)) eggs, using vector $strat_vector as strategy, we need $worst_case steps in the worst case.")


for i in 14:18
	for j in 6:10
		strat_vector=[i,j,1]
		worst_case = 0
		avg_case = 0
		best_case = 0
		for critical_floor in 1:100
			current_case = stratk(strat_vector,critical_floor,false)
			if !isnan(current_case)
				worst_case = max(worst_case,current_case)
				avg_case += current_case
				best_case = min(worst_case,current_case)
			end
		end
		avg_case /= 100
		println("""
			With $(length(strat_vector)) eggs, using vector $strat_vector as strategy, we need
			- $worst_case steps in the worst case
			- $avg_case steps in the average case
			- $best_case steps in the best case
			""")
	end
end



################# SURFACE PLOT
# using PlotlyJS

using Plots
using JSON
plotlyjs()

X = Float64[]
Y = Float64[]
Z_worst = zeros(20,20)
Z_avg = zeros(20,20)
Z_best = zeros(20,20)

for i in 14:20
	for j in 5:12
		strat_vector=[i,j,1]
		worst_case = 0
		avg_case = 0
		best_case = 0
		
		# Calculate the cases for each critical floor
		for critical_floor in 1:100
			current_case = stratk(strat_vector, critical_floor, false)
			worst_case = max(worst_case, current_case)
			avg_case += current_case
			best_case = min(worst_case, current_case)
		end
		avg_case /= 100
		
		# Append the results for the plot
		push!(X, strat_vector[1])    # X is the first component
		push!(Y, strat_vector[2])    # Y is the second component
		Z_worst[i,j] = worst_case
		Z_avg[i,j] = avg_case
		Z_best[i,j] = best_case
	end
end

# p_best = surface(x=14:18,y=6:10,z=Z_best[14:18,6:10])
# p_worst = surface(x=14:18,y=6:10,z=Z_worst[14:18,6:10])
# p_avg = surface(x=14:18,y=6:10,z=Z_avg[14:18,6:10])
# plot([p_best,p_worst,p_avg])

x=14:20; y=5:12
p1 = surface(x,y,(x,y)->Z_avg[x,y],color=:blue,
colorbar = false,alpha=0.5,
label="avg",legend=true)
surface!(p1,x,y, (x,y)->Z_best[x,y],color=:green,
colorbar = false,alpha=0.5,
label="best")
surface!(p1,x,y, (x,y)->Z_worst[x,y],color=:red,
colorbar = false,alpha=0.5,
label="worst")
xlabel!(p1,"x")
ylabel!(p1,"y")

savefig(p1,"_assets/scripts/Activity/output/dropping_eggs_surface.json")

################# SCATTER PLOT
X = Float64[]
Y = Float64[]
Z_worst = Float64[]
Z_avg = Float64[]
Z_best = Float64[]

# Compute worst, avg, and best cases for each strategy in strat_vectors
for i in 14:20
	for j in 5:12
		strat_vector=[i,j,1]
		worst_case = 0
		avg_case = 0
		best_case = 0
		
		# Calculate the cases for each critical floor
		for critical_floor in 1:100
			current_case = stratk(strat_vector, critical_floor, false)
			worst_case = max(worst_case, current_case)
			avg_case += current_case
			best_case = min(worst_case, current_case)
		end
		avg_case /= 100
		
		# Append the results for the plot
		push!(X, strat_vector[1]) 
		push!(Y, strat_vector[2])
		push!(Z_worst, worst_case) 
		push!(Z_avg, avg_case)
		push!(Z_best, best_case) 
	end
end

p = scatter3d(X,Y,Z_best,color=:green,
	msize=2.5,
	label="Z_best")
scatter3d!(p,X,Y,Z_worst,color=:red,
	msize=2.5,
	label="Z_worst")
scatter3d!(p,X,Y,Z_avg,color=:blue ,
	msize=2.5,
	label="Z_avg")
# xlabel!(p,"x: jump step 1")
# ylabel!(p,"y: jump step 2")
xlabel!(p,"x")
ylabel!(p,"y")

savefig(p,"_assets/scripts/Activity/output/dropping_eggs.json")


fig = plot(p, p1, layout = (1, 2), legend = true)
fig2 = plot(fig,legend=:top)
savefig(fig2,"_assets/scripts/Activity/output/dropping_eggs_all.json")


# p = scatter3d(x=X,y=Y,z=Z_best,mode="markers", markersize=5,color="green",name="best case")
# plot(p)
# p_best = scatter3d(x=X,y=Y,z=Z_best,mode="markers", marker=attr(size=5, color="green"),name="best case")
# p_worst = scatter3d(x=X,y=Y,z=Z_worst,mode="markers", marker=attr(size=5, color="red"),name="worst case")
# p_avg =	scatter3d(x=X,y=Y,z=Z_avg,mode="markers", marker=attr(size=5, color="blue"),name="avg case")
# fig = plot([p_best,p_worst,p_avg])
# savefig(fig,"_assets/scripts/Activity/output/dropping_eggs.json")
# savefig(fig,"_assets/scripts/Activity/output/dropping_eggs.html")
# pwd()

############ TEST
strat_vector=[14,12,1]
for critical_floor in 1:100
	current_case = stratk(strat_vector, critical_floor, false)
	@show critical_floor, current_case
end



############# FOUR EGGS
X = Float64[]
Y = Float64[]
Z = Float64[]
Z_worst = Float64[]
Z_avg = Float64[]
Z_best = Float64[]

# Compute worst, avg, and best cases for each strategy in strat_vectors
for i in 20:40
	println(i)
	for j in 6:15
		for k in 2:5
			strat_vector=[i,j,k,1]
			worst_case = 0
			avg_case = 0
			best_case = 0
			
			# Calculate the cases for each critical floor
			for critical_floor in 1:100
				current_case = stratk(strat_vector, critical_floor, false)
				worst_case = max(worst_case, current_case)
				avg_case += current_case
				best_case = min(worst_case, current_case)
			end
			avg_case /= 100
			
			# Append the results for the plot
			push!(X, strat_vector[1]) 
			push!(Y, strat_vector[2])
			push!(Z, strat_vector[3])
			push!(Z_worst, worst_case) 
			push!(Z_avg, avg_case)
			push!(Z_best, best_case) 
		end
	end
end


function linear_map(vec, a, b, c, d)
    # Linear mapping formula: y = (x - a) * (d - c) / (b - a) + c
    return (vec .- a) .* (d - c) ./ (b - a) .+ c
end

Z_best_scaled = linear_map(Z_best, extrema(filter(!isnan,Z_best))..., (reverse(extrema(filter(!isnan,Z_best)))./3)...)
Z_worst_scaled = linear_map(Z_worst, extrema(filter(!isnan,Z_worst))..., (reverse(extrema(filter(!isnan,Z_worst)))./3)...)
Z_avg_scaled = linear_map(Z_avg, extrema(filter(!isnan,Z_avg))..., (reverse(extrema(filter(!isnan,Z_avg)))./3)...)

best_indexes = @. !isnan(Z_best)
worst_indexes = @. !isnan(Z_worst)
avg_indexes = @. !isnan(Z_avg)

p1 = scatter3d(
	X[best_indexes],
	Y[best_indexes],
	Z[best_indexes],
	msize=Z_best_scaled[best_indexes],
	color=:green,label="Z_best")

p2 = scatter3d(
	X[worst_indexes],
	Y[worst_indexes],
	Z[worst_indexes],
	msize=Z_worst_scaled[worst_indexes],
	color=:red,label="Z_worst")

p3 = scatter3d(
	X[avg_indexes],
	Y[avg_indexes],
	Z[avg_indexes],
	msize=Z_avg_scaled[avg_indexes],
	color=:blue,label="Z_avg")


fig = plot(p1, p2, p3, layout = (1, 3), legend = false)
fig2 = plot(fig)#legend=:top)
savefig(fig2,"_assets/scripts/Activity/output/dropping_eggs_all.json")