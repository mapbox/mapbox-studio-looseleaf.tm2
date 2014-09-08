#!/bin/bash

fill='#fefef1'
stroke='#000363'
strokewidth=1

for reflen in {1..22}; do
    sm_width=$(($reflen*6+18))
    sm_height=18
    lg_width=$(($reflen*8+20))
    lg_height=24
    convert -type TrueColorMatte -size ${sm_width}x$sm_height xc:none \
        -fill $fill -stroke $stroke -strokewidth $strokewidth \
        -draw "roundRectangle 0,0 $(($sm_width-1)),$(($sm_height-1)), 2,2" \
        img/shield/motorway_sm_$reflen.png
    convert -type TrueColorMatte -size ${lg_width}x$lg_height xc:none \
        -fill $fill -stroke $stroke -strokewidth $strokewidth \
        -draw "roundRectangle 0,0 $(($lg_width-1)),$(($lg_height-1)), 4,4" \
        img/shield/motorway_lg_$reflen.png
done
