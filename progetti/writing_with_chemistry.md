+++
title = "Writing with chemistry"
+++

# Writing with chemistry

This project dates back to high school years where, inspired by the periodic table hang on the wall of the classroom, I tried to build words and phrases using as letters the elements from the periodic table. At the time I implemented this idea with some C code, which is available [here](https://github.com/federicomor/writing-with-chemistry), but now I also provide here a conversion to javascript.

~~~ 
<!-- Switch to select between English and Italian -->
<div class="switch-container">
    <label>
        <input type="radio" name="language" value="eng" checked onchange="loadElementsAndProcess();"> English
    </label>
    <label>
        <input type="radio" name="language" value="ita" onchange="loadElementsAndProcess();"> Italian
    </label>
</div>

<textarea id="inputText" oninput="processText();" style="width: 60%; text-transform: lowercase;">wow that's fun!</textarea><br>
<!-- try "proprio carino" in italian -->
<pre id="output" style="color: #515151; font-size: 11pt; line-height: 13pt;"></pre>

<script>
// Class for chemical elements
class Elemento {
    constructor(numero_atomico, simbolo, nome) {
        this.numero_atomico = numero_atomico;
        this.simbolo = simbolo;
        this.nome = nome;
    }
}

let elementi = [];

// Load the periodic table based on language selection
async function loadElements() {
    elementi = [];

    const lang = document.querySelector('input[name="language"]:checked').value;
    const fileName = lang === 'ita' 
	? '/assets/progetti/chem_table_ita.txt' 
	: '/assets/progetti/chem_table_eng.txt';

    try {
        const response = await fetch(fileName);

        if (!response.ok) throw new Error(`Failed to load ${fileName}`);

        const data = await response.text();
        const lines = data.trim().split("\n");

        for (let line of lines) {
            const parts = line.trim().split(/\s+/);
            if (parts.length === 3) {
                const [nome, simbolo, numero] = parts;
                elementi.push(new Elemento(parseInt(numero), simbolo, nome));
            }
        }
    } catch (error) {
        alert(`Error: ${error.message}`);
        console.error(error);
    }
}

// Parse the input text and match it against the elements
function processText() {
	// const str = document.getElementById("inputText").value.trim();
	const str = document.getElementById("inputText").value.toLowerCase().trim();
    const output = document.getElementById("output");
    output.innerHTML = "";

    if (str === "") {
        output.innerHTML = "Please enter text to parse.";
        return;
    }

    function printable(input, depth) {
    // Skip non-alphanumeric characters like spaces, commas, etc.
    if (input.length > 0 && !/[a-zA-Z]/.test(input[0])) {
        output.innerHTML += `${" | ".repeat(depth)}${input[0]}\n`;
        printable(input.substring(1), depth); // Continue with the next character
        return;
    }

    // If input is empty, print the end of a path
    if (input.length === 0) {
        output.innerHTML += `${" | ".repeat(depth-1)}<span style="color: green;">-> (ALL MATCHED) END :)</span>\n`;
        return;
    }

    let matched = false;

    // Check for both 1-letter and 2-letter matches
    for (const el of elementi) {
        if (input.startsWith(el.simbolo)) {
            // Print the matched element and continue the search recursively
            output.innerHTML += `${" | ".repeat(depth)}${el.simbolo} (${el.nome})\n`;
            printable(input.substring(el.simbolo.length), depth + 1);
            matched = true;  // Mark that a match was found
        }
    }

    // If no match is found, stop and print "unmatched"
    if (!matched) {
        output.innerHTML += `${" | ".repeat(depth)}<span style="color: red;">${input[0]} (NO MATCH) STOP :/</span>\n`;
    }
}


    // Call printable with the full input and initial depth
    printable(str, 0);
}

// Load elements and immediately process the input text
function loadElementsAndProcess() {
    loadElements().then(() => {
        processText(); // Reprocess the input after language is changed
    });
}

// Initial loading of elements when page is first loaded
window.onload = loadElementsAndProcess;
</script>

~~~ 