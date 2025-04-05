# This file was generated, do not modify it. # hide
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