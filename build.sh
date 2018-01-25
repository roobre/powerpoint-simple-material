#!/bin/bash

zip=$(which zip)

if [[ -z $zip ]]; then
    echo "No zip binary found in \$PATH" >&2
    exit 1
fi

mkdir -p build

cd src
zip -r ../build/Simple.zip * > /dev/null
cd ..

mv build/Simple.zip build/Simple.potx
