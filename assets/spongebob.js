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

	/* const url = `https://frames.everyfra.me/spongebob/S${pad(season,2)}E${pad(episode,2)}/${pad(frame,4)}.png`; */
	const url = `https://backend.everyfra.me/spongebob/s${season}e${episode}/${frame}.png`;

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