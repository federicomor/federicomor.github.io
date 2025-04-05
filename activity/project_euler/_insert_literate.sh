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

	# part to add the literate code for the problem
	page_content=$(echo "$page_content" | sed "s|{{ addcomments }}|\\\\literate{/_literate/pe_$(($problem_number)).jl}\n{{ addcomments }}|g")


    output_file="problem_$problem_number.md"
    echo "$page_content" > "$output_file"
	# echo "$page_content" 

    # echo "" >> "$output_file"
    # echo "{{ addcomments }}" >> "$output_file"

done
