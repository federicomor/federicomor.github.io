# This file was generated, do not modify it. # hide
max_n = 1 # n=i*j
max_i = 1; max_j = 1

for i in 100:998
	for j in (i+1):999
		n = i*j
		if string(n) == reverse(string(n)) && n>max_n
			global max_n = n
			global max_i = i; global max_j = j
		end
	end
end
@show max_n, max_i, max_j