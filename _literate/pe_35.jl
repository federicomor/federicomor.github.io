using Primes


ps = primes(1_000_000)
counter = 0
for p in ps
	rotazioni = @. parse(Int,join(circshift(digits(p),collect(1:length(digits(p))))))
	# @show p, all(rotazioni .all(rotazioni .∈ Ref(ps)))∈ Ref(ps))
	if all(rotazioni .∈ Ref(ps))
		@show p
		global counter += 1
	end
end
@show counter
