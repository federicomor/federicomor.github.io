# This file was generated, do not modify it. # hide
function ispandigital_v2(n)
	v = sort(digits(n))
	for i in 1:length(v)
		if v[i] != i
			return false
		end
	end
	return true
end
@show ispandigital_v2(1234)
@show ispandigital_v2(1235)