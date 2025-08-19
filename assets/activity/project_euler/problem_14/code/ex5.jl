# This file was generated, do not modify it. # hide
lens = zeros(Int, 1_000_000)
lens[1] = 1
for i in 2:1_000_000
    collatz(i, lens)
end