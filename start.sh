#!/bin/bash

cd public/h5p/
for file in *.h5p
do
    cp "$file" "../${file%.h5p}.zip"
    mkdir "../${file%.h5p}"
    unzip "../${file%.h5p}.zip" -d "../${file%.h5p}"
    rm "../${file%.h5p}.zip"
    cp template.html "../${file%.h5p}.html"
    sed -i "s/h5p-folder/${file%.h5p}/g" "../${file%.h5p}.html"
done


