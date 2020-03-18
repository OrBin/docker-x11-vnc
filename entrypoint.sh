#!/bin/sh
Xvfb :0 &
x11vnc -display :0 -bg
websockify 0.0.0.0:5901 0.0.0.0:5900 &
exec "$@"

