DIR=/home/martin/Work/Toggl
bash $DIR/togglcal.sh
bash $DIR/filter.sh
bash $DIR/reformat.sh
bash $DIR/gcal.sh
echo "Finished all scripts. Sleeping for 300s"
sleep 300
bash $DIR/runall.sh
