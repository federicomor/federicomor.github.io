# This file was generated, do not modify it. # hide
lens = zeros(Int, 20)
lens[1] = 1
for i in 2:20
    collatz(i, lens; verbose=true)
end