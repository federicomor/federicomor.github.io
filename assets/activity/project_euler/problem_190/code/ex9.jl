# This file was generated, do not modify it. # hide
xs(m) = [(2i/(m+1)) for i in 1:m]
for m in 2:15
	println("m=$m => ", round.(xs(m),digits=2))
end