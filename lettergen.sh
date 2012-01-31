#!/bin/bash
#Written By: Michael Spellecacy
#Lic: Do whatever you want.
#Purpose: use imagemagick convert to raster a font/alphabet to individual png's
#Usage: edit the file to your needs and run it
#Notes: "convert -list font" will show you all your available fonts

FONT="Foo-Regular"
FILL="orangered"
BGCOLOR="transparent"
SIZE="48x88"
GRAVITY="center"
SCOLOR="black"
PNTSIZE="72"
SVPATH="./images/"

#Im not doing {a..Z} because that includes punctuation that certain
#OS's and filesystems dont appreciate and that I wont use.

#numbers
#Im forcing number dimensions because I like my numbers presented
#in fixed width. Feel free to remove it. 
for i in {0..9} 
do
    convert -background $BGCOLOR -fill $FILL -font $FONT -size $SIZE -gravity $GRAVITY -stroke $SCOLOR -pointsize $PNTSIZE label:"$i" $SVPATH$i"_"$FILL".png"
done

#lowercase alphabet
for i in {a..z}
do
    convert -background $BGCOLOR -fill $FILL -font $FONT -gravity $GRAVITY -stroke $SCOLOR -pointsize $PNTSIZE label:"$i" $SVPATH$i"_"$FILL".png"
done

#uppercase alphabet
#Im appending '_ucase' for my case insensetive FS.
#If yours is case aware feel free to remove it. 
for i in {A..Z}
do
    convert -background $BGCOLOR -fill $FILL -font $FONT -gravity $GRAVITY -stroke $SCOLOR -pointsize $PNTSIZE label:"$i" $SVPATH$i"_"$FILL"_ucase.png"
done

# Other grammar stuff
convert -background $BGCOLOR -fill $FILL -font $FONT -size $SIZE -gravity $GRAVITY -pointsize $PNTSIZE label:" " $SVPATH"space.png"
convert -background $BGCOLOR -fill $FILL -font $FONT -size $SIZE -gravity $GRAVITY -stroke $SCOLOR -pointsize $PNTSIZE label:":" $SVPATH"colon_"$FILL".png"
convert -background $BGCOLOR -fill $FILL -font $FONT -size $SIZE -gravity $GRAVITY -stroke $SCOLOR -pointsize $PNTSIZE label:"+" $SVPATH"plus_"$FILL".png"
convert -background $BGCOLOR -fill $FILL -font $FONT -size $SIZE -gravity $GRAVITY -stroke $SCOLOR -pointsize $PNTSIZE label:"-" $SVPATH"minus_"$FILL".png"
convert -background $BGCOLOR -fill $FILL -font $FONT -size $SIZE -gravity $GRAVITY -stroke $SCOLOR -pointsize $PNTSIZE label:"." $SVPATH"period_"$FILL".png"
convert -background $BGCOLOR -fill $FILL -font $FONT -size $SIZE -gravity $GRAVITY -stroke $SCOLOR -pointsize $PNTSIZE label:"_" $SVPATH"underscore_"$FILL".png"
