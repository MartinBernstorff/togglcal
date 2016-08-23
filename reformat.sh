DIR=/home/martin/Work/Toggl
OIFS=$IFS
IFS=,    #notice: this is your field separator
while read var1 var2 var3 var4
# in the upper line as much variables as you need
# if th read command contains less variables than your csv-file contains fields,
# then the last declared variable contains the whole rest of the line

do

subject="${var1//\"}"
startorg="${var2//\"}"
duration="${var3//\"}"
project="${var4//\"}"
denom=60

if [ "$duration" -ge "0" ] 
	then
		echo -n $subject,>>$DIR/formatted.csv
		date -d "$startorg" +"%d/%m/%y %H:%M:%S", | xargs echo -n>>$DIR/formatted.csv
		echo -n $((duration/denom)),>>$DIR/formatted.csv
		echo $project>>$DIR/formatted.csv
fi

done <$DIR/new.csv
IFS=$OIFS

echo "---Data succesfully reformatted"
