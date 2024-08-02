using Plots
plotly() #hide
PlotlyKaleido.start() # needed for all savefig with plotly #hide

function S(n) 
	# actually is a bit inefficient with recursion
	n==1 && return 1
	n==2 && return 2
	return S(n-1)+S(n-2)
	end

scale = 1:15
modi = S.(scale)

plot(scale, modi, marker=:circle, line=:solid, legend=false)
xlabel!("Gradini")
ylabel!("Modi")
title!("")

savefig("output/scale.svg") # hide
savefig("output/scale.json")#hide
