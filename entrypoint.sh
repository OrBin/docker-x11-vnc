#!/bin/sh
Xvfb :0 &
x11vnc -display :0 -bg
exec "$@"

