# This file was generated, do not modify it.

using Primes

function ispandigital_v1(n)
	return sort(digits(n)) == collect(1:length(string(n)))
end
@show ispandigital_v1(1234)
@show ispandigital_v1(1235)

function ispandigital_v2(n)
	v = sort(digits(n))
	for i in 1:length(v)
		if v[i] != i
			return false
		end
	end
	return true
end
@show ispandigital_v2(1234)
@show ispandigital_v2(1235)

function ispandigital_v3(n; verbose=false)
    len = 0
    seen = falses(9)
    while n > 0
        digit = n % 10
        n ÷= 10
        if digit == 0 || seen[digit]
            return false
        end
        seen[digit] = true
        len += 1
		if verbose
			println("digit = $digit, seen = ", join(Int.(seen)))
		end
    end
	return len+1 == findfirst(x -> x==0, seen)
end
@show ispandigital_v3(123467, verbose=true)
@show ispandigital_v3(123444, verbose=true)
@show ispandigital_v3(123654, verbose=true)

function ispandigital_v4(n; verbose=false)
    len = 0
    digits_mask = 0
    while n > 0
        digit = n % 10
        n ÷= 10
        if digit == 0 || (digits_mask & (1 << digit)) != 0
            return false
        end
        digits_mask |= (1 << digit)
        len += 1
		if verbose
			println("digit = $digit, mask = ", bitstring(digits_mask)[end-9:end-1])
		end
    end
    return digits_mask == (1 << (len + 1)) - 2
end
@show ispandigital_v4(123467, verbose=true)
@show ispandigital_v4(123444, verbose=true)
@show ispandigital_v4(123654, verbose=true)

using BenchmarkTools
pan_no = 123947076
@btime ispandigital_v1(pan_no)
@btime ispandigital_v2(pan_no)
@btime ispandigital_v3(pan_no)
@btime ispandigital_v4(pan_no)

pan_yes = 123467895
@btime ispandigital_v1(pan_yes)
@btime ispandigital_v2(pan_yes)
@btime ispandigital_v3(pan_yes)
@btime ispandigital_v4(pan_yes)

@time for i in 987654321:-2:2
	if ispandigital_v4(i) && isprime(i)
		@show i
		break
	end
end
