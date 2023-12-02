FROM ubuntu:22.04

RUN apt update && apt upgrade -y
RUN apt install -y curl apt-utils
RUN dpkg --add-architecture i386
RUN apt install software-properties-common -y
RUN apt-add-repository multiverse
RUN apt update
RUN apt dist-upgrade -y
RUN echo "2\n" | apt install steamcmd -y
RUN apt install -y libpulse0 libpulse-dev libatomic1 libc6
RUN useradd -m steam
RUN cd /home/steam
RUN curl -sL https://git.io/arkmanager | bash -s steam
RUN arkmanager install
