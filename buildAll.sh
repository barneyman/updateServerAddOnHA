sudo docker run --rm -ti --name hassio-builder --privileged -v /usr/share/hassio/addons/local/barneyman:/data homeassistant/armv7-builder -t /data --all --test -i my-test-addon-{arch} -d local