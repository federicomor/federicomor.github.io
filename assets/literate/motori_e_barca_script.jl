# This file was generated, do not modify it.

using Statistics, Distributions
using Plots
plotlyjs() # hide
ps = range(0,1,length=1000)
p_navigare(k,p) = cdf(Binomial(k,p),div(k,2))

plot(ps,p_navigare.(2,ps), label="2 motori")
plot!(ps,p_navigare.(4,ps), label="4 motori")
savefig(joinpath(@OUTPUT, "2v4_motori.json")); # hide

ps = range(0,1,length=3000) #hide
plot(ps,p_navigare.(2,ps), label="2 motori")
plot!(ps,p_navigare.(4,ps), label="4 motori")
plot!(ps,p_navigare.(6,ps), label="6 motori")
plot!(ps,p_navigare.(8,ps), label="8 motori")
plot!(ps,p_navigare.(10,ps), label="10 motori")
savefig(joinpath(@OUTPUT, "2vothers_motori.json")); # hide
