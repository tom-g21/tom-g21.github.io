#!/bin/bash

# Set working directory
cd /Users/rustomgellido/Downloads/tom-g

# Create directory if it doesn't exist
mkdir -p assets/images

# Function to download icons with error checking
download_icon() {
  local url=$1
  local output_file=$2
  echo "Downloading $output_file from $url"
  if curl -L -v -o "$output_file" "$url"; then
    echo "Successfully downloaded $output_file"
  else
    echo "Failed to download $output_file"
  fi
}

# Download each icon
download_icon "https://raw.githubusercontent.com/devicons/devicon/6910f0503efdd315c8f9b858234310c06e04d9c0/icons/laravel/laravel-original.svg" "assets/images/laravel-original.svg"
download_icon "https://raw.githubusercontent.com/devicons/devicon/6910f0503efdd315c8f9b858234310c06e04d9c0/icons/tailwindcss/tailwindcss-original.svg" "assets/images/tailwindcss-original.svg"
download_icon "https://raw.githubusercontent.com/devicons/devicon/6910f0503efdd315c8f9b858234310c06e04d9c0/icons/jquery/jquery-original.svg" "assets/images/jquery-original.svg"
download_icon "https://raw.githubusercontent.com/devicons/devicon/6910f0503efdd315c8f9b858234310c06e04d9c0/icons/bootstrap/bootstrap-original.svg" "assets/images/bootstrap-original.svg"
download_icon "https://raw.githubusercontent.com/devicons/devicon/6910f0503efdd315c8f9b858234310c06e04d9c0/icons/php/php-original.svg" "assets/images/php-original.svg"
download_icon "https://raw.githubusercontent.com/devicons/devicon/6910f0503efdd315c8f9b858234310c06e04d9c0/icons/livewire/livewire-original.svg" "assets/images/livewire-original.svg"

echo "Download process complete."
