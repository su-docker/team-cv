#!/bin/bash

# Check if a filename is passed as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 data/<profile filename>"
    exit 1
fi

# Get the input file name from the command-line argument
input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: File '$input_file' does not exist in the 'data' folder."
    exit 1
fi

# Path to the config file
config_file="data/config.yaml"

# Check if the config file exists
if [ ! -f "$config_file" ]; then
    echo "Error: Config file '$config_file' does not exist in the 'data' folder."
    exit 1
fi

# Create a temporary file for concatenation
temp_file="data/temp.yaml"

# Concatenate input file and config.yaml into the temporary file
cat "$input_file" "$config_file" > "$temp_file"

# Run the rendercv command on the temporary file
rendercv render "$temp_file" -nohtml -nomd -nopng -pdf profiles/

# Remove the temporary file after use
rm "$temp_file"