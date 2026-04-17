using Plots
using JSON
plotlyjs() # hide

vertici(n) = 2^n
lati(n) = 2^(n-1)*n
facce_piane(n) = n >= 2 ? 2^(n-2) * binomial(n,2) : 0
facce_k(n,k) = 3 <= k <= n-1 ? 2^(n-k) * binomial(n,k) : 0

ns = collect(1:9)

colors = [:red, :blue, :green, :orange]
p1 = plot(ns, vertici.(ns), label="",title="vertici", color=colors[1], m=2, markershape=:circle)
p2 = plot(ns, lati.(ns), label="",title="lati", color=colors[2], m=2, markershape=:circle)
p3 = plot(ns, facce_piane.(ns), label="",title="facce piane", color=colors[3], m=2, markershape=:circle)
p4 = plot(ns, facce_k.(ns, 3), label="",title="facce cubiche", color=colors[4], m=2, markershape=:circle)
p = plot(p1, p2, p3, p4, layout=(2, 2))
savefig(p,joinpath(pwd(), "ipercubi.json")) # hide