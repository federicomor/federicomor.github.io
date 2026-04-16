using Statistics, Distributions
using Plots
plotlyjs()

begin	
p = range(0,1,length=1000)
# p_nav_2 = @. pdf(Binomial(2,p),0) + pdf(Binomial(2,p),1)
p_nav_2 = sum([pdf.(Binomial.(2,p),i) for i in 0:1])
p_nav_4 = sum([pdf.(Binomial.(4,p),i) for i in 0:2])
p_nav_6 = sum([pdf.(Binomial.(6,p),i) for i in 0:3])
p_nav_8 = sum([pdf.(Binomial.(8,p),i) for i in 0:4])

p_nav_k(k) = sum([pdf.(Binomial.(k,p),i) for i in 0:div(k,2)])


plot(p,p_nav_2, label="2 motori")
plot!(p,p_nav_4, label="4 motori")
plot!(p,p_nav_6, label="6 motori")
plot!(p,p_nav_8, label="8 motori")
plot!(p,p_nav_k(10), label="10 motori")
end