# This file was generated, do not modify it. # hide
max_len = 1
max_idx = 1
@time for i in 1:1_000_000
	cur_len = simple_collatz(i)
	if cur_len > max_len
		global max_len = cur_len
		global max_idx = i
	end
end
@show max_len, max_idx