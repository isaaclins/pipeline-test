#!/bin/bash

# Get the commits by date and format them
git log --pretty=format:'## %ad%n%h %s' --date=iso > commits.txt

# Check if README.md is empty
if [ ! -s README.md ]; then
  cat commits.txt > README.md
else
  # Append the formatted commits to the 11th line of README.md
  awk 'NR==11{while((getline line < "commits.txt") > 0) print line}1' README.md > temp && mv temp README.md
fi