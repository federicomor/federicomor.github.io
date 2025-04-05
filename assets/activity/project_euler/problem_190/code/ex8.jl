# This file was generated, do not modify it. # hide
Pm(m) = prod([(2i/(m+1))^i for i in 1:m]) # hide
Int(sum(floor(Pm(i)) for i in 2:15)) # hide
Int.(sum([floor(prod([(2i/(m+1))^i for i in 1:m])) for m in 2:15]))