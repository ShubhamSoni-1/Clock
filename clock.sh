#!/bin/bash
#Version- 1.0
#Date- 21 Nov 2023


# Function to print colored text
print_colored_text() {
    local text=$1
    local color_code=$2

    echo -e "\e[${color_code}m${text}\e[0m"
}

# Function to continuously display the time
display_time() {
    while true; do
        current_time=$(date +%r)
        print_colored_text "$current_time" "$user_color"
        sleep 1  # Wait for 1 second
        clear     # Clear the terminal screen
    done
}

# Get user input for text color
read -p "Enter color code (e.g., 31 for red upto 37): " user_color

# Call the function to display the time
clear
display_time
