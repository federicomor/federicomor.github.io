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
    
    # Extract the problem content between <div class="problem_content" role="problem"> and </div><br>
    problem=$(echo "$page_content" | sed -n '/<div class="problem_content" role="problem">/,/<\/div><br>/p')
    
    # Modify image src to use the full URL
    clean_problem_with_images=$(echo "$problem" | sed 's#src="resources/images/#src="https://projecteuler.net/resources/images/#g')
    # Clean up unwanted tags (<p>, <br>, <div>, etc.)
    clean_problem=$(echo "$clean_problem_with_images" | sed 's/<p>//g' | sed 's/<\/p>//g' | sed 's/<br>//g' | sed 's/<div>//g' | sed 's/<\/div>//g' | sed 's/<div class="problem_content" role="problem">//g' | sed 's/alt="">/alt=""\n~~~/g' | sed 's/<div class=/~~~\n<div class=/g' )
    
    # Extract the title (inside the <h2> tag)
    title=$(echo "$page_content" | sed -n 's/.*<h2>\(.*\)<\/h2>.*/\1/p')

    # Save to a file in Markdown format
    output_file="$output_dir/problem_$problem_number.md"
    if [[ -n "$title" && -n "$clean_problem" ]]; then

        ############# FRANKLIN STUFF #############
        echo "+++" > "$output_file"
        echo "title = \"$title\"" >> "$output_file"
        echo "hascode = true" >> "$output_file"
        echo "hasplotly = true" >> "$output_file"
        echo "+++" >> "$output_file"
        echo "" >> "$output_file"

        ############# TITOLO #############
        # echo "## $title" >> "$output_file"
        # ⟵ ← ⟶ → 
        echo "## [⟵ ](/activity/project_euler/problem_$(($problem_number-1))/) (P$problem_number) $title [ ⟶](/activity/project_euler/problem_$(($problem_number+1))/)" >> "$output_file"
        echo "" >> "$output_file"

        ############# CONTENUTO #############
        echo "$clean_problem" >> "$output_file"

        ############# LINK #############
        echo ">[Problema $problem_number su Project Euler]($url)" >> "$output_file"
        # echo ">[$url]($url)" >> "$output_file"
        echo "" >> "$output_file"

        ############# SOLUZIONE #############
        echo "## Soluzione" >> "$output_file"

        echo "Saved Problem $problem_number to $output_file."
    else
        echo "Failed to extract content for Problem $problem_number."
    fi
done
