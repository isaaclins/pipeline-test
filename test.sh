#!/bin/bash

# Get the commits by date and format them
git log --pretty=format:'## %ad%n%h %s' --date=format:'%Y-%m-%d' > commits.txt
