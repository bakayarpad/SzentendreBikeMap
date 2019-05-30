#!/bin/sh

FIRSTY=5711
FIRSTX=9056
HEIGHT=4000
WIDTH=3000
RES=14
HX=0
echo "<svg width=\"$WIDTH\" height=\"$HEIGHT\"  xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\">"       
while [ $HX -lt $WIDTH ] ; do
    XP=`expr $FIRSTX + $HX / 256`
    HY=0
	while [ $HY -lt $HEIGHT ] ; do
	   YP=`expr $FIRSTY + $HY / 256`
#	   echo "<image xlink:href=\"https://mapserver.mapy.cz/winter-m/$RES-$XP-$YP\" height=\"256\" width=\"256\" transform=\"translate($HX $HY)\"/>"
       FN="$RES-$XP-$YP"
	   [ -e "$FN" ] || wget "https://mapserver.mapy.cz/winter-m/$FN" -O $FN.png
	   echo "<image xlink:href=\"$FN.png\" height=\"256\" width=\"256\" transform=\"translate($HX $HY)\"/>"
	   HY=`expr $HY + 256`
	done
    HX=`expr $HX + 256`
done
echo "</svg>"
