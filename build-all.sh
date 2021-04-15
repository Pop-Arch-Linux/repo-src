#!/bin/sh

rm -v **/*.gz **/*.zst
git submodule update --remote --recursive

for pack in */
do
  echo "building: ${pack%*/}"
  cd $pack
  makepkg -Csc --noconfirm
  cd ..
done
