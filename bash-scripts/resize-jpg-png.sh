#!/bin/bash

# come si usa?
# 1: crea una cartella "resized"
# 2: ricrea al suo interno la struttura delle sottocartelle presenti
# 3: lancia questo script da terminale. 

for f in `find . -name "*.jpg"`;
	do convert $f -gravity center -resize 320x220^ -crop 320x220+0+0 resized/$f.jpg;
done
for f in `find . -name "*.png"`;
	do convert $f -gravity center -resize 320x220^ -crop 320x220+0+0 resized/$f.png;
done