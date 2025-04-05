# This file was generated, do not modify it.

using Plots
using JSON
plotlyjs()
xs(m) = [(2i/(m+1)) for i in 1:m]; #hide

nout = 100
x1s = range(0,2,length=nout)
vals = zeros(nout)
for i in 1:nout
	x1 = x1s[i]
	x2 = 2-x1
	vals[i] = x1 * x2^2
end
plot(x1s,vals,label="")
max_idx = argmax(vals)
x1_max = x1s[max_idx]
vline!([x1_max],label="")
savefig(joinpath(@OUTPUT, "m2_plot.json")); # hide

println("Max value ($(maximum(vals))) reached at index $max_idx, ie for")
println("x1 = ", x1_max)
println("x2 = ", 2-x1_max)

xs(2) # hide

nout = 200
x1s = range(0,3,length=nout)
x2s = range(0,3,length=nout)
vals = zeros(nout,nout)
for i in 1:nout
	x1 = x1s[i]
	for j in 1:nout
		x2 = x2s[j]
		if x1+x2 <= 3
			x3 = 3-x1-x2
			vals[i,j] = x1 * x2^2 * x3^3
		end
	end
end
max_idx = argmax(vals)
x1_max = x1s[max_idx[1]]
x2_max = x1s[max_idx[2]]
plot3d(x1s,x2s,vals',st=:surface, label="")
plot3d!(repeat([x1_max],2),repeat([x2_max],2),[0,maximum(vals)+0.5],label="")
savefig(joinpath(@OUTPUT, "m3_plot.json")); # hide

println("Max value ($(maximum(vals))) reached at $max_idx, ie for")
println("x1 = ", x1_max)
println("x2 = ", x2_max)
println("x3 = ", 3-x1_max-x2_max)

xs(3) # hide

Pm(m) = prod([(2i/(m+1))^i for i in 1:m]) # hide
Int(sum(floor(Pm(i)) for i in 2:15)) # hide
Int.(sum([floor(prod([(2i/(m+1))^i for i in 1:m])) for m in 2:15]))

for i in 2:15
	println("$i => ", round.(xs(i),digits=2))
end
