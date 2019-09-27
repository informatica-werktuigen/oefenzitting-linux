#!/bin/bash
if [ -d kopie ];
then
    if [ -f kopie/bestand_met_inhoud ];
    then
        cmp --silent kopie/bestand_met_inhoud map_met_inhoud/bestand_met_inhoud
        out=$?
        if [ $out -ne 0 ];
        then
            echo "Het is de bedoeling om de volledige map met alle bestanden te kopiëren zonder aanpassingen."
        else
            echo "piquant"    
        fi
    else
        echo "Helaas, de map is geen kopie van de originele map"
    fi
else
    echo "Helaas, je hebt geen map aangemaakt."
fi
