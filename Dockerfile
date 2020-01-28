FROM orbin/x11:latest

COPY entrypoint.sh /

RUN apt-get update \
    && apt-get install -y xvfb x11vnc \
    && chmod +x /entrypoint.sh

EXPOSE 5900
ENV DISPLAY=:0

ENTRYPOINT ["/entrypoint.sh"]
