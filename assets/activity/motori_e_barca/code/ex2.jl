# This file was generated, do not modify it. # hide
ps = range(0,1,length=3000) # hide
plot(ps,p_navigare.(2,ps), label="2 motori")
plot!(ps,p_navigare.(4,ps), label="4 motori")
plot!(ps,p_navigare.(6,ps), label="6 motori")
plot!(ps,p_navigare.(8,ps), label="8 motori")
plot!(ps,p_navigare.(10,ps), label="10 motori")
savefig(joinpath(@OUTPUT, "2vothers_motori.json")); # hide