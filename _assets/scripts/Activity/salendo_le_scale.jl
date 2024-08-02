using Plots
plotly() #hide
PlotlyKaleido.start() # needed for all savefig with plotly #hide

function S(n,k)
	# very inefficient actually with recursion
	n==0 && return 0
	n==1 && return 1
	if n<k 
		return S(n,k-1)
	elseif n==k
		return S(n,k-1)+1
	else # n>k
		return sum(S(n-i,k) for i in 1:k)
	end
end

scale = 1:14
modi_1 = S.(scale,1)
modi_2 = S.(scale,2)
modi_3 = S.(scale,3)
modi_4 = S.(scale,4)
modi_5 = S.(scale,5)

plot(scale, modi_1, marker=:circle, line=:solid, label="k=1", legend=:left)
plot!(scale, modi_2, marker=:circle, line=:solid, label="k=2")
plot!(scale, modi_3, marker=:circle, line=:solid, label="k=3")
plot!(scale, modi_4, marker=:circle, line=:solid, label="k=4")
plot!(scale, modi_5, marker=:circle, line=:solid, label="k=5")

plot!(xticks=collect(scale))
xlabel!("Gradini")
ylabel!("Modi")
title!("Comparison of S(n, k) for different k values")

savefig("Activity/output/scale.svg") # hide
savefig("Activity/output/scale.json")#hide
