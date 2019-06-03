# SzentendreBikeMap

Ebben a projektben a Szentendre környékének biciklis térképét fejlesztik Magyar Kerékpárosklub szentendrei szervezetének tagjai.

A térképet igyekszünk nagy felbontásban, A3 körüli méretnél is jó minőségben nyomtathatóként elkészíteni, de természtesen az használhatóság, az áttekinthetőség és a pontosság a kiemelt cél.


## Használat
A projektben található .svg kiterjesztésű fileok megnyithatók tetszőleges bőngészőben (pl. "google-chrome AlapTerkep.svg", ill. szerkeszthetők ú.n. SVG editorokkal, amelyek közül az inkscape nevű ingyenes szoftver ajánljuk. 

Az SVG editorokkal exportálni is lehet a rajzokat, pl. PDF vagy PNG formátumba.

- **AlapTerkep.svg**: csak a Mapy.cz winter-t tartalmazza
- **AlapTerkepUtakkal.svg**: rá vannak rajzolva az utak és a szövegbuborékok
- **AlapTerkepUtakkal_GeoL_BubL.svg**: az utak, ill. a buborékok külön rétegekbe kerültek, ezek közül az utak rétege úgy van transzformálva, hogy földrajzi kookdinátákkal lehet leírni. 


## A qgz kiterjesztésű QGIS file-ok

Szerintem csak installálni kell a QGIS-t, és "qgis <filenév>"...

## Egyebek

- **kalkulacio.xslx**: koordináta transzformációk meghatározása
- **svggen.sh**: alaptérkép generálás

