#!/bin/bash

# Copy selected .po files from translations/{lang}/po to input/translations/{lang}

LANGUAGES="ru uz"
PATTERNS="StructureDefinition-*.po ImplementationGuide-*.po"

for lang in $LANGUAGES; do
    src="translations/$lang/po"
    dest="input/translations/$lang"

    if [[ ! -d "$src" ]]; then
        echo "Source directory $src not found, skipping"
        continue
    fi

    mkdir -p "$dest"

    for pattern in $PATTERNS; do
        files=($src/$pattern)
        if [[ -e "${files[0]}" ]]; then
            cp $src/$pattern "$dest/"
            echo "Copied $pattern to $dest/ ($(ls -1 $src/$pattern 2>/dev/null | wc -l) files)"
        fi
    done
done

echo "Done"
