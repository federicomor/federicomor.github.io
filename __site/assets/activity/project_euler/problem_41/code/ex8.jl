# This file was generated, do not modify it. # hide
@time for i in 987654321:-2:2
	if ispandigital_v4(i) && isprime(i)
		@show i
		break
	end
end