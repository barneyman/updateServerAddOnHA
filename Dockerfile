ARG BUILD_FROM=hassioaddons/base:7.2.0

FROM ${BUILD_FROM}

ENV LANG C.UTF-8

# install requirements
RUN apk add --no-cache python3 git linux-headers py3-pip \
    && pip3 install --no-cache-dir --upgrade pip \
    && pip3 install zeroconf \
    && pip3 install requests \
#    && pip3 install urllib.parse \
    && pip3 install cherrypy

#RUN git clone https://github.com/barneyman/espUpdateServer.git

# Copy data for add-on
COPY run.sh /
COPY espUpdateServer/server.py /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]