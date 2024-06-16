function hfun_youtube(param)
  link=param[1]
  return """
  <iframe width="100%" height="315"
    src="https://www.youtube.com/embed/$link">
  </iframe>
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
    height="500px"
    width="100%"
  ></embed>
  """
end


