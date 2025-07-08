#!/usr/bin/env bash

set -euo pipefail

echo "The following directories will be deleted:"
echo "  - build/"
echo "  - install/"
echo "  - log/"
read -rp "Are you sure you want to proceed? (y/N): " confirm

# Convert input to lowercase
confirm=${confirm,,}

if [[ "$confirm" == "y" || "$confirm" == "yes" ]]; then
    rm -rf build install log
    echo "Deleted: build/, install/, log/"
else
    echo "Operation canceled. No files were deleted."
fi
