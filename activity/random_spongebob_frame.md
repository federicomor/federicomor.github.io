+++
title = "Random Spongebob Frame"
hascode = true
hasmath = true
hasplotly = true
+++

# Random Spongebob Frame
_thanks to [https://new.everyfra.me/gallery/spongebob/](https://new.everyfra.me/gallery/spongebob/)_

~~~
<!-- <div style="display: flex; align-items: flex-start; gap: 1em;"> -->
	<!-- <div style="display: flex; flex-direction: column; align-items: center; gap: 0.4em;"> -->
<div style="display: flex; align-items: center; gap: 0.5em; flex-wrap: wrap; margin: 0 0;">
	<button onclick="loadRandomFrame()">I'm ready!</button>
	<button onclick="shiftFrame(-5)">-5</button>
	<button onclick="shiftFrame(-1)">-1</button>
	<button onclick="shiftFrame(3)" >+3</button>
	<button onclick="shiftFrame(10)">+10</button>
	</div>
		<div style="display: flex; align-items: center; gap: 0.5em;">
		<label>
			<span>S:</span>
			<input id="manualSeason" type="number" min="1" max="99" style="width: 4em;" />
		</label>
		<label>
			<span>E:</span>
			<input id="manualEpisode" type="number" min="1" max="6" style="width: 4em;" />
		</label>
		<label>
			<span>F:</span>
			<input id="manualFrame" type="number" min="0" max="9999" style="width: 5em;" />
		</label>
		<button onclick="loadManualFrame()">Load manually</button>
		</div>
	
		<p id="status" style="margin-top: 0.5em; font-style: italic;"></p>
		<img id="frame" alt="Frame not found :/" style="display:none; max-width: 100%; height: auto;" /> 
	</div>
		
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
		const frame = Math.floor(Math.random() * 3000);

		// const url = `https://frames.everyfra.me/spongebob/S${pad(season,2)}E${pad(episode,2)}/${pad(frame,4)}.png`;
		const url = `https://backend.everyfra.me/spongebob/s${season}e${episode}/${frame}.png`;
		// console.log(url)

		if (await testImage(url)) {
		updateFrame(season, episode, frame);
		found = true;
		}
	}
	if (!found) {
		document.getElementById('status').innerText =
		'Something went wrong :/';
	}
	}

	async function shiftFrame(delta) {
		if (currentSeason === null || currentEpisode === null || currentFrame === null) {
			return;
		}
		let newFrame = currentFrame + delta;
		updateFrame(currentSeason, currentEpisode, newFrame);
	}

	function updateFrame(season, episode, frame) {
	currentSeason = season;
	currentEpisode = episode;
	currentFrame = frame;

	const url = `https://backend.everyfra.me/spongebob/s${season}e${episode}/${frame}.png`;
	
	const imgEl = document.getElementById('frame');
	imgEl.src = url;
	imgEl.style.display = 'block';

	document.getElementById('status').innerText =
		`Season ${season}, Episode ${episode}, Frame ${frame}`;
	}

	function loadManualFrame() {
		const season = parseInt(document.getElementById('manualSeason').value);
		const episode = parseInt(document.getElementById('manualEpisode').value);
		const frame = parseInt(document.getElementById('manualFrame').value);

		updateFrame(season, episode, frame);
	}

	loadRandomFrame();
</script>

~~~
