# This file was generated, do not modify it. # hide
nbowls = 4; nballs = 5
# definiamo gli stati e le probabilità iniziali
states, p₀ = get_states(nbowls, nballs)
# salviamo l'indice di ogni stato, per accederci con 1, 2, ecc nella matrice P
states_dict = Dict(state => i for (i, state) in enumerate(states))
nstates = length(states);