#
# Complete the 'getExpressionSums' function below.
#
# The function is expected to return an INTEGER.
# The function accepts STRING num as parameter.
#

#= original idea:
function f(pre::Int,num::String)
    num == "" && return pre   
    mod = Int(1e9+7)
    n = parse(Int,num)
    nd = reverse(digits(n,pad=length(num)))
    
    if length(nd)==1
        return pre+nd[1] % mod
    elseif length(nd)==2 
        return (pre+nd[1]+nd[2]) % mod + (pre+parse(Int,join(nd))) % mod
    else 
        for i in 1:length(nd)
            return f(join(nd[1:i]),join(nd[i+1:end])) % mod
        end
    end 
end
=#

const modulo =  10^9 + 7 
function f_2(pre::Int, num::String, dep=0)
    num == "" && return pre % modulo
    S = 0
    for i in eachindex(num)
        current = parse(Int64, num[1:i]) % modulo
        # println("\t"^dep, "digit = $digit")
        # current = (current*10+digit) % modulo
        S = (S + f_2((pre+current) % modulo, num[i+1:end], dep+1)) % modulo
    end

    return S
end
function f(pre::Int, num::String, dep=0)
    num == "" && return pre % modulo
    
    # println("\t"^dep,"pre=$pre, num=$num")
    S = 0
    current = 0
    for i in eachindex(num)
        digit = parse(Int64, num[i])
        # println("\t"^dep, "digit = $digit")
        current = (current*10+digit) % modulo
        # println("\t"^dep, "current = $current")
        # println("\t"^dep, "calling f($(pre+current),$(num[i+1:end]))")
        S = (S + f((pre+current) % modulo, num[i+1:end], dep+1)) % modulo
        # println("\t"^dep, "S = $S")
    end

    return S
end
@time f(1,"234")
@time f_2(1,"234")

function getExpressionSums(num::String)
    S = 0
    pre = 0
    for i in eachindex(num)
        digit = parse(Int64,num[i])
        pre = (pre*10+digit) % modulo
        out =  f(pre, num[i+1:end]) % modulo
        S = (S + out) % modulo
        @show digit, pre, out, S
    end
    return S
end

getExpressionSums("1234")
f(0,"1234")
f_2(0,"1234")
f(12,"34")



#=
with active as (
    select round(sum(weight),2) as total_weight, count(*) as total_packages,
        "active" as status_group,
        GROUP_CONCAT(DISTINCT status ORDER BY status SEPARATOR ',') AS statuses
    from packages
    where 1=1
        and status in ('created','shipped','on hold')
)
, inactive as (
    select round(sum(weight),2) as total_weight, count(*) as total_packages,
        "inactive" as status_group,
         GROUP_CONCAT(DISTINCT status ORDER BY status SEPARATOR ',') AS statuses
    from packages
    where 1=1
        and status in ('delivered','cancelled')
)
select status_group, statuses, total_packages, total_weight from active
union ALL
select status_group, statuses, total_packages, total_weight from inactive
;
=#