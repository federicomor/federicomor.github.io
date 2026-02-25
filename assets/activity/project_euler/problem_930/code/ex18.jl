# This file was generated, do not modify it. # hide
function G(N,M)
	S = 0
	for n in 2:N, m in 2:M
		@time out = F(Rational{Int},n,m)
		println("(n,m)=($n,$m) => E[#steps] = $out = $(Float64(out))")
		S += out
		println("")
	end
	println("done!")
	return S
end

G(4,5) # giusto un esempio