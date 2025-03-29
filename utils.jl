"""
Display a Plotly plot given an exported JSON `String`.
```
using PlotlyJS
fdplotly(json(plot([1, 2]))
```
"""
function fdplotly(json::String; id="fdp"*Random.randstring('a':'z', 3),
				  style="width:600px;height:350px")::Nothing
	println("""
		~~~
		<div id="$id" style="$style"></div>

		<script>
			var fig = $json;
			CONTAINER = document.getElementById('$id');
			Plotly.newPlot(CONTAINER, fig.data, fig.layout)
		</script>
		~~~
		""")
	return nothing
end

macro OUTPUT()
    return isdefined(Main, :Franklin) ? Franklin.OUT_PATH[] : "/tmp/"
end

function hfun_addcomments()
	return """
		<script src="https://giscus.app/client.js"
				data-repo="federicomor/federicomor.github.io"
				data-repo-id="R_kgDOLBdBYA"
				data-category="Announcements"
				data-category-id="DIC_kwDOLBdBYM4Clm0M"
				data-mapping="url"
				data-strict="0"
				data-reactions-enabled="1"
				data-emit-metadata="0"
				data-input-position="bottom"
				data-theme="preferred_color_scheme"
				data-lang="it"
				// data-loading="lazy"
				crossorigin="anonymous"
				async>
		</script>
		"""
end

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

function hfun_calcoli(param)
	img=param[1]
	return """
	<div class="side-note">
		<a href="$img" title="Handwritten computations">📋
		<p class="small-text">Calcoli originali</p> </a>
	</div>
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

function hfun_blur(param)
text=param[1]
	return """<span style="filter: blur(8px); cursor: pointer; transition: filter 0.5s ease; background-color: #ffffff; outline: none;" onclick="this.style.filter='none'; this.style.cursor='default';">$text</span>
	"""
end

function hfun_gray(param)
	text=param[1]
	return """
	<p style="font-size: 10px; color: grey; line-height: 0.2em">$text</p>
	"""
end	
