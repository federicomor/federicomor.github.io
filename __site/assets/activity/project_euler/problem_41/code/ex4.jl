# This file was generated, do not modify it. # hide
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