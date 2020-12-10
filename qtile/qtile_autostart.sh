#! /bin/bash 
copyq &
nitrogen --restore &
libinput-gestures-setup start &
dispad &
compton --backend glx --paint-on-overlay --vsync opengl-swc &
