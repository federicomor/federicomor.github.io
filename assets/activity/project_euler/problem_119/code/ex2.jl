# This file was generated, do not modify it. # hide
# creiamo il dizionario che contiene la chiave (base, esponente) e il valore corrispondente (base^esponente)
d = Dict{Tuple{Int, Int}, Int}()
# lo popoliamo, come precalcolo per lo step successivo
println("precomputation step")
@time for base in 2:70
	for exp in 2:30
		d[(base, exp)] = base^exp
	end
end