# This file was generated, do not modify it. # hide
# simulazione estesa
S = 0
for i in 1:999
	if i%3 == 0 || i%5 == 0
		global S += i
	end
end
@show S