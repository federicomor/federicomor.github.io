# This file was generated, do not modify it. # hide
function G(N,M)
	S = 0
	for n in 2:N, m in 2:M
		println("(n,m)=($n,$m)")
		@time S += F(n,m)
		println("")
	end
	println("done!")
	return S
end

G(4,5) # giusto un esempio