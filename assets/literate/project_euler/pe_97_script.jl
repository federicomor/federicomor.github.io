# This file was generated, do not modify it.

(powermod(2,7830457,10^10) * 28433 + 1) % 10^10

function my_powermod(x, p, m)
    result = 1
    base = mod(x, m)
    exp = p
    while exp > 0
        result = mod(result * base, m)
        exp -= 1
    end
    return result
end

@time my_powermod(2,7830457,10^10)

@time powermod(2,7830457,10^10)
