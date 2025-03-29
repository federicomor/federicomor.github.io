#!/bin/bash

# Directory to save the extracted content
output_dir="."

# Loop over a range of problem numbers (e.g., from 1 to 10)
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <start_problem_number> <end_problem_number>"
    exit 1
fi

# Read the arguments
start_problem_number=$1
end_problem_number=$2

# Loop over the range provided as arguments
for problem_number in $(seq $start_problem_number $end_problem_number)
do
    # URL of the problem
    url="https://projecteuler.net/problem=$problem_number"
    
    # echo "Downloading Problem $problem_number..."
    page_content=$(curl -s "$url")
    problem_content=$(echo "$page_content" | sed -n '/<div id="content">/,/<!--end_content-->/p')
    problem_content=$(echo "$problem_content" | sed 's/src="/src="https:\/\/projecteuler.net\//g' | sed 's/href="/href="https:\/\/projecteuler.net\//g')

    # remove minimal html article
    problem_content=$(echo "$problem_content" | sed 's/<a href="https:\/\/projecteuler.net\/minimal=.*&nbsp;//g')
    # attach link to original site
    problem_content=$(echo "$problem_content" | sed "s/<h3>/<h3><a href=\"https:\/\/projecteuler.net\/problem=$problem_number\">/g")
    problem_content=$(echo "$problem_content" | sed 's/<\/h3>/<\/a><\/h3>/g')

    # change info image to emoji
    problem_content=$(echo "$problem_content" | sed 's/<img src="https:\/\/projecteuler.net\/images\/icons\/info.png" class="icon">/ℹ️/g')

    # adjust {{ and }}
    problem_content=$(echo "$problem_content" | sed 's/{{/{ {/g' | sed 's/}}/} }/g')
    problem_content=$(echo "$problem_content" | sed 's/{{/{ {/g' | sed 's/}}/} }/g')


    # Extract the title (inside the <h2> tag)
    title=$(echo "$page_content" | sed -n 's/.*<h2>\(.*\)<\/h2>.*/\1/p')

    # Save to a file in Markdown format
    output_file="$output_dir/problem_$problem_number.md"
    if [[ -n "$title" && -n "$problem_content" ]]; then

        ############# FRANKLIN STUFF #############
        echo "+++" > "$output_file"
        # echo "title = \"$title\"" >> "$output_file"
        echo "title = \"P$problem_number\"" >> "$output_file"
        echo "hascode = true" >> "$output_file"
        echo "hasplotly = true" >> "$output_file"
        echo "showall = true" >> "$output_file" # for literate stuff
        echo "+++" >> "$output_file"
        echo "" >> "$output_file"

        # fix titles with dollars
        # if [[ $title == *'$'* ]]; then
        #   echo "Problem $problem_number contains a \$ symbol in the title. Fix it!"
        # fi

        ############# TOP DIRECTIONS LINKS #############
        echo "~~~" >> $output_file
        # echo "<p style=\"margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;\">" >> $output_file
        echo "<div class=\"navigation_symbols\">" >> $output_file

        # input form for quick link
        echo "<form action=\"\" method=\"get\" onsubmit=\"location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;\" style=\"display:inline;\">" >> $output_file
        echo "<input title=\"go to problem\" type=\"\" placeholder=\" \" required style=\"margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;\">" >> $output_file
        echo "</form>" >> $output_file

        # echo "<a href=\"/activity/project_euler/problem_$(($problem_number-1))/\" style=\"color: black; text-decoration: none;\">← </a>" >> $output_file
        echo "<a href=\"/activity/project_euler/problem_$(($problem_number-1))/\" style=\"color: black; text-decoration: none;\"><i class=\"fa-solid fa-arrow-left\"></i></a>" >> $output_file

echo '<a href="javascript:void(0)" onclick="getRandomProblem()" style="color: black; text-decoration: none;" title="random problem">🎲 </a>' >> $output_file
echo '<script>' >> $output_file
echo '  function getRandomProblem() {' >> $output_file
echo "    fetch('/activity/project_euler/data.txt') " >> $output_file
echo '      .then(response => response.text())' >> $output_file
echo '      .then(data => {' >> $output_file
echo '        const maxProblems = parseInt(data.trim(), 10);' >> $output_file
echo '        const randomProblemNumber = Math.floor(Math.random() * maxProblems) + 1;' >> $output_file
echo "        window.location = '/activity/project_euler/problem_' + randomProblemNumber + '/';" >> $output_file
echo '      })' >> $output_file
echo "      .catch(err => console.error('Error fetching max problems:', err));" >> $output_file
echo '  }' >> $output_file
echo '</script>' >> $output_file

        echo "<a href=\"/activity/project_euler\" style=\"color: black; text-decoration: none;\">🏠 </a>" >> $output_file
        # echo "<a href=\"/activity/project_euler/problem_$(($problem_number+1))/\" style=\"color: black; text-decoration: none;\">→ </a>" >> $output_file
        echo "<a href=\"/activity/project_euler/problem_$(($problem_number+1))/\" style=\"color: black; text-decoration: none;\"><i class=\"fa-solid fa-arrow-right\"></i></a>" >> $output_file
        echo "</div>" >> $output_file
        echo "~~~" >> $output_file
        echo "" >> $output_file

        ############# TITOLO #############
        # ⟵ ← ⟶ → 
        # echo "## (P$problem_number) $title" >> "$output_file"
        # echo "## [⟵ ](/activity/project_euler/problem_$(($problem_number-1))/) (P$problem_number) $title [ ⟶](/activity/project_euler/problem_$(($problem_number+1))/)" >> "$output_file"
        # echo "" >> "$output_file"


        ############# PRE-CONTENT #############
        echo '~~~' >> "$output_file"
        echo '<link rel="stylesheet" type="text/css" href="/activity/project_euler/style_main.1735430422.css">' >> "$output_file"
        echo '<link rel="stylesheet" type="text/css" href="/activity/project_euler/style_default.1627113674.css">' >> "$output_file"
        echo '<script src="https://projecteuler.net/js/mathjax_config.js"></script>' >> "$output_file"
        echo '<script src="https://cdnjs.cloudflare.com/polyfill/v3/polyfill.min.js?version=4.8.0&features=es6"></script>' >> "$output_file"
        echo '<script id="MathJax-script" async' >> "$output_file"
        echo 'src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">' >> "$output_file"
        echo '</script>' >> "$output_file"

        ############# CONTENUTO #############
        # echo "$clean_problem" >> "$output_file"
        echo "$problem_content" >> "$output_file"
        echo '~~~' >> "$output_file"

        ############# LINK #############
        # echo ">[Problema $problem_number su Project Euler]($url)" >> "$output_file"
        # echo "" >> "$output_file"

        ############# SOLUZIONE #############
        echo "## Soluzione" >> "$output_file"
        # echo "\literate{/_literate/pe_$problem_number.jl}" >> "$output_file"

        ############# COMMENTS #############
        echo "" >> "$output_file"
        echo "{{ addcomments }}" >> "$output_file"

        echo "Saved Problem $problem_number to $output_file"
    else
        echo "Failed to extract content for Problem $problem_number."
    fi
done
