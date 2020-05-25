#!/usr/bin/fish

mkdir -p build
valac --pkg gtk+-3.0 src/Election.vala -o build/election
