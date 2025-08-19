# This file was generated, do not modify it.

function simple_collatz(n; verbose=false)
	steps = 1
	if verbose println("(step=$steps) $n") end
	while true
		if iseven(n)
			n = div(n,2)
		else
			n = 3n+1
		end
		steps += 1

		if verbose println("(step=$steps) $n") end
		if n==1
			break
		end
	end
	return steps
end
simple_collatz(50, verbose=true)

max_len = 1
max_idx = 1
@time for i in 1:1_000_000
	cur_len = simple_collatz(i)
	if cur_len > max_len
		global max_len = cur_len
		global max_idx = i
	end
end
@show max_len, max_idx

function collatz(n, lens; verbose=false)
    if n <= length(lens) && lens[n] != 0
        if verbose println("    lui ci conduce a $n che sappiamo già produrre una sequenza lunga $(lens[n])") end
        return lens[n]
    end

    if verbose println("Incontriamo $n per la prima volta, continuiamo con la ricorsione") end
    nextn = iseven(n) ? div(n,2) : 3n+1
    val = 1 + collatz(nextn, lens; verbose=verbose)

    if n <= length(lens)
        lens[n] = val
    end
    return val
end

lens = zeros(Int, 20)
lens[1] = 1
for i in 2:20
    collatz(i, lens; verbose=true)
end

lens = zeros(Int, 1_000_000)
lens[1] = 1
for i in 2:1_000_000
    collatz(i, lens)
end

risp = findmax(lens)
@show risp

println("La catena più lunga parte da n=$(risp[2]) ed è lunga $(risp[1])")
