sum([i for i in 1:999 if (i%3==0 || i%5==0)])

S = 0
for i in 1:999
	if i%3 == 0 || i%5 == 0
		S += i
	end
end
@show S