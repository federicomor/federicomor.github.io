# This file was generated, do not modify it.

@time mod(sum([powermod(i,i,10^10) for i in 1:1000]),10^10)

sol = 0
@time for i in 1:1000
	global sol += powermod(i,i,10^10)
end
@show mod(sol,10^10)
