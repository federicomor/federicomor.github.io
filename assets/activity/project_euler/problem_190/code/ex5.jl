# This file was generated, do not modify it. # hide
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