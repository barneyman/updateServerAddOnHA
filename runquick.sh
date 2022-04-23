#sudo docker run --rm -v /tmp/my_test_data:/data -p 8080:8080/tcp -v /var/run/docker.sock:/var/run/docker.sock:ro local/bjfaddon
# to get mdns adverts?
sudo docker run --rm -v /tmp/my_test_data:/data --net=host -v /var/run/docker.sock:/var/run/docker.sock:ro local/bjfaddon

