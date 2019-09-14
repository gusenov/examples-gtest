#!/bin/bash

# Usage:
# ./get-gtest.sh 1.8.1

version="$1"

if [ -z "$version" ]; then
    version="1.8.1"
fi

ditrib="release-${version}.tar.gz"
ditrib_dir="googletest-release-${version}"

curl --silent --location "https://github.com/google/googletest/archive/$ditrib" --output "$ditrib"

if [ ! -f "$ditrib" ]; then
    exit
fi

[ -d "$ditrib_dir" ] && rm -rf "$ditrib_dir"
tar xzf "$ditrib"
rm "$ditrib"

if [ ! -d "$ditrib_dir" ]; then
    exit
fi

find "./$ditrib_dir" -mindepth 1 -maxdepth 1 ! -iname "googletest" ! -iname "googlemock" -exec rm -rf {} \;
find "./$ditrib_dir/googletest" -mindepth 1 -maxdepth 1 ! -iname "include" ! -iname "src" -exec rm -rf {} \;
find "./$ditrib_dir/googlemock" -mindepth 1 -maxdepth 1 ! -iname "include" ! -iname "src" -exec rm -rf {} \;

mv "$ditrib_dir" "googletest"
