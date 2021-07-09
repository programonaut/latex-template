#!/bin/bash
echo "Are u sure you want to execute this experiment?"
echo ""

echo "Enter current filename"
read currFilename

echo "Enter new filename"
read newFilename

mv "$currFilename.tex" "$newFilename.tex"
echo "currFilename.tex changed to $newFilename.tex"
for file in $(find . -name '*.tex'); 
do 
    echo "$file changed"
    sed -i "s/$currFilename.tex/$newFilename.tex/" "$file"
done
