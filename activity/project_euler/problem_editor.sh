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
    echo "editing problem $problem_number"

    page_content=$(cat "problem_$problem_number.md")
    # page_content=$(echo "$page_content" | sed 's/<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">/<p class="navigation_symbols">/g')

	page_content=$(echo "$page_content" | sed 's/{{ addcomments }}/\\literate{\/_literate\/script.jl}\n{{ addcomments }}/g' | sed 's/hasplotly = true/hasplotly = true\nshowall = true/g')


    # page_content=$(echo "$page_content" | sed 's/<p class="navigation_symbols">/<p class="navigation_symbols">\n<form action="" method="get" onsubmit="location.href='\/activity\/project_euler\/problem_' + this.elements[0].value; return false;" style="display:inline;">\n  <input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 50px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">\n</form>/g')

    output_file="problem_$problem_number.md"
    echo "$page_content" > "$output_file"

    # echo "" >> "$output_file"
    # echo "{{ addcomments }}" >> "$output_file"

done
