using Plots
using Distributions 
# using Base: basename # hide
plotly() #hide
PlotlyKaleido.start() # needed for all savefig with plotly #hide

# 1  2  3  4  5  6  7  8  9  10 11 12
# A  B  B  A  A  B  B  A  A  B  B  A
function ptiebreak(a::Real,b::Real)
    p70 = (pdf(Binomial(3,a),3) * pdf(Binomial(3,b),3))*b 
    # batte B al 7mo turno
    p71 = sum([pdf(Binomial(3,a),i) * pdf(Binomial(4,b),6-i) for i in 2:3])*a 
    # batte A all'8vo turno
    p72 = sum([pdf(Binomial(4,a),i) * pdf(Binomial(4,b),6-i) for i in 2:4])*a 
    # batte A al 9no turno
    p73 = sum([pdf(Binomial(5,a),i) * pdf(Binomial(4,b),6-i) for i in 2:5])*b 
    # batte B al 10mo turno 
    p74 = sum([pdf(Binomial(5,a),i) * pdf(Binomial(5,b),6-i) for i in 1:5])*b 
    # batte B al 11mo turno
    p75 = sum([pdf(Binomial(5,a),i) * pdf(Binomial(6,b),6-i) for i in 0:5])*a
    # batte A al 12mo turno
    p66 = sum([pdf(Binomial(6,a),i) * pdf(Binomial(6,b),6-i) for i in 0:6])
    pda66 = a*b/(1-a-b+2*a*b) 
    
    ptot = p70+p71+p72+p73+p74+p75+p66*pda66
    @assert 0<=ptot<=1
    return ptot
end

aa = range(0.01,0.99, step=0.01)
bb = range(0.01,0.99, step=0.01)
p = surface(aa, bb, ptiebreak,camera=(25,20))
xlabel!("a values")
ylabel!("b values")
savefig("$(splitext(basename(@__FILE__))[1]).json") # hide
savefig("output/tennis_surface.json")#hide

contourf(aa, bb, ptiebreak)
xlabel!("a values")
ylabel!("b values")
savefig("output/tennis_contourf.json") #hide
