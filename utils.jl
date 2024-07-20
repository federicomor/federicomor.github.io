function hfun_youtube(param)
	if occursin("youtu.be",param[1])
		link = "https://www.youtube.com/embed/" * split(param[1],"/")[end]
	elseif occursin("youtube",param[1])
		link = "https://www.youtube.com/embed/" * split(param[1],"=")[end]
	else
		link= "https://www.youtube.com/embed/" * param[1]
	end
	return """
	<p></p>
	<iframe width="80%" style="aspect-ratio:16/9; margin: auto;" 
		src="$(link)?rel=0">
	</iframe>
	<p></p>
	"""
end


function hfun_desmos(param)
	lnk=param[1]
	return """
	<iframe src="$lnk" width="100%" style="aspect-ratio:16/9;"></iframe>
	"""
end


function hfun_pdf(param)
	path=param[1]
	return """
	<embed
		src="$path#navpanes=0"
		type="application/pdf"
		frameBorder="0"
		scrolling="auto"
		width="100%"
		style="aspect-ratio:16/9;"
	></embed>
	<p style="font-size: 12px; color: grey; line-height: 1.2em">
		<!-- If the PDF does not display correctly, <a href="$path" target="_blank">click here to view it</a>.-->
		<!-- Se non compare nulla <a href="$path" target="_blank">clicca qui</a> per scaricare il pdf. -->
		Link diretto al pdf <a href="$path" target="_blank">qui</a>.
		Direct link to pdf <a href="$path" target="_blank">here</a>.
	</p>
	"""
end


function hfun_gray(param)
	text=param[1]
	return """
	<p style="font-size: 10px; color: grey; line-height: 0.2em">$text</p>
	"""
end	
