#!/bin/sh
# read specified command
if [[ $# -eq 1 ]]; then
    cmd=$1
else
    echo "Exactly one command needs to be specified (eg. PlayPause, Stop, Next or Previous)."
    echo "See the specification for available commands: http://specifications.freedesktop.org/mpris-spec/latest/Player_Interface.html"
    exit 0
fi
# determine applications
apps=(`qdbus | grep org.mpris.MediaPlayer2 | sed 's/.*\.//'`)
# send the specified command for each application
for app in "${apps[@]}"
do
    qdbus org.mpris.MediaPlayer2.$app /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.$cmd
done
