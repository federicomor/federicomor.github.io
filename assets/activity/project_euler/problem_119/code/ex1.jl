# This file was generated, do not modify it. # hide
i = 0
n = 11
@time while i<13
	global i, n # questione di scope
	sum_digits = sum(digits(n))
	if sum_digits != 1
		x = round(log10(n)/log10(sum_digits))
		if n == sum_digits^Int(x) # rifacciamo il controllo per evitare errori dovuti ad approssimazioni
			i += 1
			println("$i) $n = $sum_digits^$(Int(x))")
		end
	end
	n += 1
end