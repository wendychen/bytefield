#!/bin/bash

echo "=== bytefield-svg Batch Converter ==="

for file in "$@"; do
    if [ -f "$file.edn" ]; then
        echo "Converting: $file.edn → $file.svg"
        bytefield-svg -s "$file.edn" -o "$file.svg"
    else
        echo "Warning: $file.edn not found"
    fi
done

echo "Done!"
