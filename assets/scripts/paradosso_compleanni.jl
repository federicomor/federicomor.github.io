using Plots
using Base: basename # hide
plotly() # hide
PlotlyKaleido.start()  # hide

p1(n) = 1 - factorial(big(365)) / (factorial(big(365-n)) * big(365)^n)
p1_values = p1.(1:365)
plot(p1_values,title="p1 values")
savefig("output/$(splitext(basename(@__FILE__))[1])_1.json") # hide

p2(n) = 1 - (big(364/365)^n)
p2_values = p2.(1:2000)
plot(p2_values,title="p2 values")
savefig("output/$(splitext(basename(@__FILE__))[1])_2.json") # hide