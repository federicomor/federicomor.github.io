+++
title = "Random Spongebob Frame"
+++

# Random Spongebob Frame
_thanks to [https://new.everyfra.me/gallery/spongebob/](https://new.everyfra.me/gallery/spongebob/)_

~~~
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
<script src="/assets/spongebob.js"></script>
~~~
