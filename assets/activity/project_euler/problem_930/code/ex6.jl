# This file was generated, do not modify it. # hide
# reduce states to their minimal representation, ie accounting for simmetries
function min_state(best::Vector; verbose=false)
    tmp = copy(best)
    rtmp = reverse(copy(best))
	if verbose @show tmp,rtmp,best end
    for i in 1:length(best)
        tmp = circshift(tmp, 1)
        if tmp < best
            best = copy(tmp)
        end
        rtmp = circshift(rtmp, 1)
        if rtmp < best
            best = copy(rtmp)
        end
		if verbose @show tmp,rtmp,best end
    end
    return best
end
min_state([1,2,0,0,1],verbose=true)'