#!/bin/bash

# Dependencies: xclip
# Pass any parametr to activate Copy&Paste.

# Copy curent text
if [ -n "$1" ]
then
sleep 0.3
xdotool key ctrl+c
fi

# Create an "ephemeral" file, that disappears with this process
tmpfile=$(mktemp /tmp/vim-edit-clipboard.XXXXXX)
exec 3>"$tmpfile"
rm $tmpfile

# It's unlinked, but can be referred to by other processes using /proc
ephemeral_path=/proc/$$/fd/3

# Paste to the file
xclip -selection clipboard -o > $ephemeral_path
# Edit it. Make Vim respect the presence or lack of EOL at EOF
#gvim --nofork -c 'set nofixeol' $ephemeral_path
#open my terminal and vim
alacritty -e vim $ephemeral_path
# Then copy it to the clipboard, removing the newline at the end
xclip -selection clipboard < $ephemeral_path

# Paste saved text
if [ -n "$1" ]
then
sleep 0.3
xdotool key ctrl+v
fi
