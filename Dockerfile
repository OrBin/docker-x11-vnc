FROM orbin/x11:latest

COPY entrypoint.sh /

RUN apt-get update \
    && apt-get install -y xvfb x11vnc python-pip \
    && chmod +x /entrypoint.sh \
    && pip install websockify

EXPOSE 5900-5901
ENV DISPLAY=:0

ENTRYPOINT ["/entrypoint.sh"]
