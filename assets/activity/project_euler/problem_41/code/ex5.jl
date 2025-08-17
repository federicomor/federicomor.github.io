# This file was generated, do not modify it. # hide
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
			println("digit = $digit, mask = ", bitstring(digits_mask)[end-8:end])
		end
    end
    return digits_mask == (1 << (len + 1)) - 2
end
@show ispandigital_v4(123467, verbose=true)
@show ispandigital_v4(123444, verbose=true)
@show ispandigital_v4(123654, verbose=true)