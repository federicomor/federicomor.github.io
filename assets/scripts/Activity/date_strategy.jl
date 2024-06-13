using Random
Random.seed!(42)

function M_strategy_score(partners,M,verbose=0)
    @assert length(partners)>=M+1
    
    partners_not_discarded = partners[M+1:end]
    best_score_of_discarded = maximum(partners[1:M])
    
    available_scores = max.(partners_not_discarded .- best_score_of_discarded,0)
    
    out = findfirst(u -> u!=0, available_scores)
    chosen_index = isnothing(out) ? lastindex(partners_not_discarded) : out
    score_out = partners_not_discarded[chosen_index]
    found_soul_mate = score_out==length(partners)

    if verbose==1
        println("We discarded $M partners (from $(length(partners)) partners).")
        println("The best score there was $best_score_of_discarded.")
        printstyled(partners[1:M]; color=:yellow)
        printstyled(partners[M+1:end]; color=:green)
        println("\nIn the end we selected partner #$(chosen_index+M) of score $score_out.")
        println(found_soul_mate==1 ? "We" : "We didnt have", " found our soulmate.\n")
    end
    
    return found_soul_mate
end 

M = 5
partners = shuffle(1:20)
M_strategy_score(partners,M,1)

# optimal strategy should be discarding M=N/ℯ partners
N = 100
simulations = 30_000
values_tested = ["2","ℯ","3","4","5","6","7"]
M_values = round.(Int64,[N/2 N/ℯ N/3 N/4 N/5 N/6 N/7])
scores = zeros(length(M_values))

for sim in 1:simulations
    local partners = shuffle(1:N)
    for i in 1:length(M_values)
        scores[i] += M_strategy_score(partners,M_values[i])
    end
end
scores ./= simulations
println("Testing on N = $N.")
for i in 1:length(M_values)
    println("Using M = $(M_values[i]) (that is N/$(values_tested[i])) we got score = $(scores[i])")
end     
    println("Where score is the probability of having found our soulmate.")


using Plots
plotly()
PlotlyKaleido.start() # needed for all savefig with plotly

plot(bar(scores),xticks=(1:length(values_tested),"N".*"/".*values_tested))
savefig("output/date_strategy.json")