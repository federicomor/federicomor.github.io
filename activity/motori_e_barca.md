+++
title = "Di quanti motori dotare una barca"
hascode = true
hasplotly = true
+++

## Di quanti motori dotare una barca

Una barca è in grado di navigare quando almeno la metà dei motori risulta funzionante. Supponiamo che ogni motore si possa guastare con probabilità $p$ in modo indipendente dagli altri. Per quali valori di $p$ un traghetto con quattro motori ha maggior probabilità di navigare di un traghetto con due motori?

## Soluzione
\literate{/_literate/motori_e_barca.jl}

Concludiamo con una simpatica gif che mostra l'andamento delle varie probabilità, con anche un effetto Matrix/zoom nella parte centrale più interessante.
```julia
ps1 = range(0.0, 0.3, length=500)  # less dense before 0.3
ps2 = range(0.3, 0.5, length=2000) # denser in [0.3, 0.5]
ps3 = range(0.5, 1.0, length=500)  # less dense after 0.5
ps = unique(vcat(ps1, ps2, ps3))

ys = [p_navigare.(n, ps) for n in (2, 4, 6, 8, 10)]
labels = string.(collect(2:2:10)," motori")
colors = [:blue, :green, :red, :orange, :purple]

@gif for i in 1:length(ps)
    plt = plot()
    for j in 1:length(ys)
        plot!(ps[1:i], ys[j][1:i], label=labels[j], color=colors[j])
    end
end every 10
```

\fig{/assets/scripts/output/motori.gif}