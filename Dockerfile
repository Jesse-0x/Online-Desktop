FROM kdeneon/all:stable

ENV HOME=/root DEBIAN_FRONTEND=noninteractive LC_ALL=C.UTF-8 DISPLAY=:0.0 DISPLAY_WIDTH=1280 DISPLAY_HEIGHT=800 

RUN set -ex;sudo apt update -y;sudo apt upgrade --fix-missing -y;sudo apt install --no-install-recommends -y x11vnc xvfb supervisor git;sudo apt autoremove -y;sudo rm -rf /var/lib/apt/lists/*

RUN sudo apt update -y; sudo apt upgrade -y;sudo apt autoremove -y;sudo rm -rf /var/lib/apt/lists/*

COPY ./app/ /app


WORKDIR /tmp

CMD ["/app/run.sh"]