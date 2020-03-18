# docker-x11-vnc
A container image to support X11 apps being forwarded to VNC.

## Build
```bash
docker build -t orbin/x11-vnc .
```

## Usage

### Run the container
Port 5900 is "regular" VNC connection, while port 5901 is the WebSocket VNC connection.
To run the container with xclock, for example, type the following command:
```bash
docker run -it --rm -p 5900:5900 -p 5901:5901 orbin/x11-vnc xclock
```

### Connect using noVNC on the browser (over WebSocket)
* Go to [this noVNC live demo](https://novnc.com/noVNC/vnc.html).
* On the left floating menu, click the Settings icon, then head to Advanced -> WebSocket.
* Uncheck "Encrypt"
* Change "Host" to `localhost`
* Change "Port" to `5901`
* Change "Path" to an empty string
* Click "Connect" button in the center of the page

### Connect using a "regular" VNC client
Just connect to `localhost` with a VNC Client of your choice (e.g. [VNC Connect from RealVNC](https://www.realvnc.com/en/connect/download/viewer/)).
