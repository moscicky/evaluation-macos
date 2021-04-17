FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
libsdl1.2-dev \
libsdl-ttf2.0-dev \
libboost-dev \
libboost-all-dev \
libsdl-image1.2-dev \
libsdl-gfx1.2-5 \
libsdl-gfx1.2-dev \
lua5.1 \
liblua5.2-dev \
libluabind-dev