#!/bin/bash

# Script to delete unused images from assets/images directory
# Based on the analysis performed on July 17, 2025

echo "Removing unused images from assets/images directory..."

# Navigate to the project root
cd "$(dirname "$0")"

# Define the images to delete
UNUSED_IMAGES=(
  "avatar-2.png"
  "avatar-3.png"
  "avatar-4.png"
  "filament-logo.png"
  "icon-app.svg"
  "icon-design.svg"
  "icon-dev.svg"
  "icon-photo.svg"
  "klaviyo-logo.png"
  "laravel.png"
  "laravel.svg"
  "logo-1-color.png"
  "logo-2-color.png"
  "logo-3-color.png"
  "logo-4-color.png"
  "logo-5-color.png"
  "logo-6-color.png"
  "logo.svg"
  "my-avatar.png"
  "nova-logo.png"
  "oqea_logo.png"
  "zapier-logo.png"
)

# Delete each unused image
for image in "${UNUSED_IMAGES[@]}"; do
  if [ -f "assets/images/$image" ]; then
    echo "Deleting: assets/images/$image"
    rm "assets/images/$image"
  else
    echo "Warning: assets/images/$image not found"
  fi
done

echo "Cleanup complete!"
