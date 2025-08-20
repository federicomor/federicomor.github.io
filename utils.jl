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
function my_savefig(name)
	savefig(joinpath(@OUTPUT, name))
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

function hfun_igbookreview(param)
	return """
	<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-permalink="https://www.instagram.com/p/$(param[1])/?utm_source=ig_embed&amp;utm_campaign=loading" data-instgrm-version="14" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:400px; min-width:200px; padding:0; width:80%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:16px;"> <a href="https://www.instagram.com/p/$(param[1])/?utm_source=ig_embed&amp;utm_campaign=loading" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> <div style=" display: flex; flex-direction: row; align-items: center;"> <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div></div></div><div style="padding: 19% 0;"></div> <div style="display:block; height:50px; margin:0 auto 12px; width:50px;"><svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;">Visualizza questo post su Instagram</div></div><div style="padding: 12.5% 0;"></div> <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;"><div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div> <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div></div><div style="margin-left: 8px;"> <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div><div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div> <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center; margin-bottom: 24px;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 224px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 144px;"></div></div></a><p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;"><a href="https://www.instagram.com/p/$(param[1])/?utm_source=ig_embed&amp;utm_campaign=loading" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;" target="_blank">Un post condiviso da Federico (@divergentissimo)</a></p></div></blockquote>
	<script async src="//www.instagram.com/embed.js"></script>"""
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
