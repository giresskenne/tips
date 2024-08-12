#!/bin/bash

# List of repository URLs (SSH)
REPOS=(
    "git@github.com:DEL-ORG/s8giress-do-it-yourself-ui.git"
    "git@github.com:DEL-ORG/s8giress-do-it-yourself-assets.git"
    "git@github.com:DEL-ORG/s8giress-do-it-yourself-catalog.git"
    "git@github.com:DEL-ORG/s8giress-do-it-yourself-carts.git"
    "git@github.com:DEL-ORG/s8giress-do-it-yourself-checkout.git"
    "git@github.com:DEL-ORG/s8giress-do-it-yourself-orders.git"
    # Add more repository URLs as needed
)

# Directory where you want to clone the repositories
TARGET_DIR="$HOME/Documents/DEVOPS FOLDERS"

# Change to the target directory
cd "$TARGET_DIR" || { echo "Failed to change directory to $TARGET_DIR"; exit 1; }

# Clone each repository
for REPO in "${REPOS[@]}"; do
    echo "Cloning $REPO..."
    git clone --branch fixing-bugs "$REPO"
done

echo "All repositories have been cloned."
