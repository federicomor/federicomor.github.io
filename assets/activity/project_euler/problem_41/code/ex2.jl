# This file was generated, do not modify it. # hide
function ispandigital_v1(n)
	return sort(digits(n)) == collect(1:length(string(n)))
end
@show ispandigital_v1(1234)
@show ispandigital_v1(1235)