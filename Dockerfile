FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install --no-install-recommends -y unzip libx11-xcb1 qtbase5-dev libqt5svg5-dev libxcb-glx0 libfontconfig1 libgl1 ncbi-blast+ libx11-6 procps xvfb unzip software-properties-common

RUN apt-get install qt5-default -y

RUN apt-get install libx11-xcb-dev libglu1-mesa-dev build-essential -y

COPY Bandage_Ubuntu-x86-64_v0.9.0_AppDir.zip /

RUN unzip *.zip && mv Bandage_Ubuntu-x86-64_v0.9.0 /bin/

ENV QT_DEBUG_PLUGINS=0

# ENV QT_QPA_PLATFORM=xcb

# ENV QT_QPA_PLATFORM_PLUGIN_PATH=/bin/Bandage_Ubuntu-x86-64_v0.9.0/usr/plugins

# ENV LD_LIBRARY_PATH=/bin/Bandage_Ubuntu-x86-64_v0.9.0/usr/lib

# ENV QT_PLUGIN_PATH=/bin/Bandage_Ubuntu-x86-64_v0.9.0/usr/plugins

RUN chmod +x /bin/Bandage_Ubuntu-x86-64_v0.9.0/usr/bin/bandage

# RUN echo 'alias Bandage="./bin/Bandage_Ubuntu-x86-64_v0.9.0/usr/bin/bandage"' >> ~/.bashrc

RUN ln -sf /bin/Bandage_Ubuntu-x86-64_v0.9.0/usr/platforms/ /usr/bin/platforms

RUN apt-get clean all && apt-get autoremove -y --purge unzip && apt-get purge && rm Bandage_Ubuntu-x86-64_v0.9.0_AppDir.zip && rm sample_LastGraph && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# SHELL ["bash", "-c"]