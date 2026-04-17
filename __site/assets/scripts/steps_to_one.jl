function show_steps(n::Integer)
	print(n, " ");steps = 0
	while n>1
		if n%2==0
			n = n÷2
			# print("—(/2)—> $n ")
		else
			n = n-1
			# print("—(-1)—> $n ")
		end
		steps += 1
		print("-> $n ")
		if n==1
			print("# steps=$steps\n")
			break
		end
	end
end	

