# This file was generated, do not modify it. # hide
# https://docs.juliaplots.org/stable/generated/graph_attributes/#graph_attributes
graphplot(P,
	names=join.(states),
	nodesize = 0.2,
	curvature_scalar=0.1,
	node_shape=:circle,
	# edge_label = P,
	# edgelabel_offset = 0,
	fontsize = 4,
	self_edge_size = 0.12,
	method=:circular,
	axis_buffer=0.2)
savefig(joinpath(@OUTPUT, "mc_graph_real.svg")); # hide