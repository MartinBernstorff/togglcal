#!/bin/bash
echo "----------------------Creating calendar events"

MetaImprovements="21254275"
MeTime="21254284"
Nurturing="21235876"
Reading="21254344"
Socializing="21236783"
StudyingAU="21254348"
StudyingPersonal="21254361"


OIFS=$IFS
IFS=,    #notice: this is your field separator
while read var1 var2 var3 var4
# in the upper line as much variables as you need
# if th read command contains less variables than your csv-file contains fields,
# then the last declared variable contains the whole rest of the line

do

	if [ "$var4" = "$MetaImprovements" ]; then
		gcalcli --calendar 'MetaImprovements' --title "$var1" --when "$var2" --duration "$var3" --where '' --description '' --reminder '5200w' add
	fi

        if [ "$var4" = "$MeTime" ]; then
                gcalcli --calendar 'MeTime' --title "$var1" --when "$var2" --duration "$var3" --where '' --description '' --reminder '5200w' add
        fi

        if [ "$var4" = "$Nurturing" ]; then
                gcalcli --calendar 'Nurturing' --title "$var1" --when "$var2" --duration "$var3" --where '' --description '' --reminder '5200w' add
		echo 'Creating event in "Nurturing"'
        fi

        if [ "$var4" = "$Reading" ]; then
                gcalcli --calendar 'Reading' --title "$var1" --when "$var2" --duration "$var3" --where '' --description '' --reminder '5200w' add
        fi

        if [ "$var4" = "$Socializing" ]; then
                gcalcli --calendar 'Socializing' --title "$var1" --when "$var2" --duration "$var3" --where '' --description '' --reminder '5200w' add
        fi

        if [ "$var4" = "$StudyingAU" ]; then
                gcalcli --calendar 'StudyingAU' --title "$var1" --when "$var2" --duration "$var3" --where '' --description '' --reminder '5200w' add
        fi

        if [ "$var4" = "$StudyingPersonal" ]; then
                gcalcli --calendar 'StudyingPersonal' --title "$var1" --when "$var2" --duration "$var3" --where '' --description '' --reminder '5200w' add
        fi

# note: the upper line is just an example to print out the fist, fourth and sixth field

done <formatted.csv
IFS=$OIFS

> formatted.csv
