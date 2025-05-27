~~~ 
<body>
	<h1>Random Spongebob Frame</h1>
	<button onclick="loadRandomFrame()">I'm ready!</button>
	<div>
	  <button onclick="changeFrame(-10)">-10</button>
	  <button onclick="changeFrame(-1)">-1</button>
	  <button onclick="changeFrame(1)">+1</button>
	  <button onclick="changeFrame(10)">+10</button>
	</div>
	<p id="status"></p>
	<img id="frame" alt="SpongeBob Frame" style="display:none; max-width: 100%; height: auto;" />
  
	<script>
	  let currentSeason = null;
	  let currentEpisode = null;
	  let currentFrame = null;
  
	  function pad(num, size) {
		let s = String(num);
		while (s.length < size) s = "0" + s;
		return s;
	  }
  
	  function testImage(url) {
		return new Promise((resolve) => {
		  const img = new Image();
		  img.onload = () => resolve(true);
		  img.onerror = () => resolve(false);
		  img.src = url;
		});
	  }
  
	  async function loadRandomFrame() {
		const maxTries = 30;
		let tries = 0;
		let found = false;
  
		while (tries < maxTries && !found) {
		  tries++;
  
		  const season = Math.floor(Math.random() * 6) + 1;
		  const episode = Math.floor(Math.random() * 40) + 1;
		  const frame = Math.floor(Math.random() * 5000);
  
		  const url = `https://frames.everyfra.me/spongebob/S${pad(season,2)}E${pad(episode,2)}/${pad(frame,4)}.png`;
  
		  if (await testImage(url)) {
			updateFrame(season, episode, frame);
			found = true;
		  }
		}
  
		if (!found) {
		  document.getElementById('status').innerText =
			'Could not find a valid frame after 30 tries.';
		}
	  }
  
	  async function changeFrame(delta) {
		if (currentSeason === null || currentEpisode === null || currentFrame === null) {
		  return;
		}
  
		const maxTries = 10;
		let tries = 0;
		let newFrame = currentFrame + delta;
  
		while (tries < maxTries) {
		  tries++;
		  if (newFrame < 0) return; // prevent negative frames
  
		  const url = `https://frames.everyfra.me/spongebob/S${pad(currentSeason,2)}E${pad(currentEpisode,2)}/${pad(newFrame,4)}.png`;
  
		  if (await testImage(url)) {
			updateFrame(currentSeason, currentEpisode, newFrame);
			return;
		  }
  
		  // Try next one in same direction if failed
		  newFrame += (delta > 0 ? 1 : -1);
		}
  
		document.getElementById('status').innerText =
		  `Couldn't find a nearby frame after ${maxTries} tries.`;
	  }
  
	  function updateFrame(season, episode, frame) {
		currentSeason = season;
		currentEpisode = episode;
		currentFrame = frame;
  
		const url = `https://frames.everyfra.me/spongebob/S${pad(season,2)}E${pad(episode,2)}/${pad(frame,4)}.png`;
  
		const imgEl = document.getElementById('frame');
		imgEl.src = url;
		imgEl.style.display = 'block';
  
		document.getElementById('status').innerText =
		  `Season ${season}, Episode ${episode}, Frame ${frame}`;
	  }
  
	  // Load one on page startup
	  loadRandomFrame();
	</script>
  </body>

~~~ 