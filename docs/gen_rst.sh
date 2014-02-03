#!/bin/bash

echo "Cleaning generated files..."
rm -f ./docs/source/*.rst

echo Converting markdown to rst...
for file in ./docs/source/markdown/*.md; do
  base=$(basename $file)
  filename=${base%.*}
  echo ">> $base"
  pandoc -s "./docs/source/markdown/${base}" -o "./docs/source/${filename}.rst"
done
