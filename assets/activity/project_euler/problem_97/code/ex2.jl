# This file was generated, do not modify it. # hide
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