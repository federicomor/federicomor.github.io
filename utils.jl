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


function hfun_backtotop()
return """
<style>
#myBtn {
  display: none;
  position: fixed;
  bottom: 10px;
  right: 0px;
  z-index: 99;
  border: none;
  outline: none;
  background-color: #dec6e0;;
  color: white;
  cursor: pointer;
  border-radius: 0px;
  transform: scale(1.25);
}

#myBtn:hover {
  background-color: #555;
}
</style>
<button onclick="topFunction()" id="myBtn">^</button>

<script>
// Get the button
let mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>
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
