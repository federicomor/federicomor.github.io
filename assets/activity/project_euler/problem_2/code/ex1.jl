# This file was generated, do not modify it. # hide
S = 0
fibs = [2 1]
while fibs[1] <= 4_000_000
	if iseven(fibs[1])
		global S += fibs[1]
	end
	fibs[1], fibs[2] = sum(fibs), fibs[1]
end
@show S