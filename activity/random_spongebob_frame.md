~~~ 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Random SpongeBob Frame</title>

</head>
<body>
  <h1>Random Spongebob Frame</h1>
  <button onclick="loadRandomFrame()">I'm ready!</button>
  <p id="status"></p>
  <img id="frame" alt="SpongeBob Frame" style="display:none;" />

  <script>
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
    //   document.getElementById('status').innerText = 'Loading...';
      document.getElementById('frame').style.display = 'none';

      const maxTries = 30;
      let tries = 0;
      let found = false;

      while (tries < maxTries && !found) {
        tries++;

        const season = pad(Math.floor(Math.random() * 6) + 1, 2);      // "01" to "06"
        const episode = pad(Math.floor(Math.random() * 40) + 1, 2);    // "01" to "40"
        const frame = pad(Math.floor(Math.random() * 5000), 4);        // "0000" to "4999"

        const url = `https://frames.everyfra.me/spongebob/S${season}E${episode}/${frame}.png`;
        // console.log(url);

        if (await testImage(url)) {
          const imgEl = document.getElementById('frame');
          imgEl.src = url;
          imgEl.style.display = 'block';
          document.getElementById('status').innerText =
            `Season ${parseInt(season)}, Episode ${parseInt(episode)}, Frame ${parseInt(frame)}`;
          found = true;
        }
      }

      if (!found) {
        document.getElementById('status').innerText =
          'Could not find a valid frame after 30 tries.';
      }
    }

// 	function loadRandomFrame() {
//   const season = pad(Math.floor(Math.random() * 6) + 1, 2);
//   const episode = pad(Math.floor(Math.random() * 40) + 1, 2);
//   const frame = pad(Math.floor(Math.random() * 5000), 4);

//   const url = `https://frames.everyfra.me/spongebob/S${season}E${episode}/${frame}.png`;
//   const imgEl = document.getElementById('frame');
//   imgEl.src = url;
//   imgEl.style.display = 'block';

//   document.getElementById('status').innerText =
//     `Season ${parseInt(season)}, Episode ${parseInt(episode)}, Frame ${parseInt(frame)}`;
// }

    // Load one at page startup
    loadRandomFrame();
  </script>
</body>
</html>

~~~ 