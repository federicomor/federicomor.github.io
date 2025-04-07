# This file was generated, do not modify it. # hide
xs(m) = [(2i/(m+1)) for i in 1:m]
for i in 2:15
	println("$i => ", round.(xs(i),digits=2))
end