# This file was generated, do not modify it. # hide
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