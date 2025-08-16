# This file was generated, do not modify it. # hide
function find_max_pfactor_fast(n)
	i = 1
	while n != 1
		i += 1
		if n % i == 0
			println("n=$(rpad(n,20)) -> $i è un fattore primo di n")
			while n % i == 0
				n = n/i
			end
		end
	end
	println("n = $(rpad(Int64(n),20)) -> finito!")
	println("$i è il più alto fattore primo di n")
end
@time find_max_pfactor_fast(n_test)