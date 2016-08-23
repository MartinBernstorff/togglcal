DIR=/home/martin/Work/Toggl
comm --nocheck-order -23 $DIR/today.csv $DIR/reference.csv>$DIR/new.csv
cp $DIR/today.csv $DIR/reference.csv
