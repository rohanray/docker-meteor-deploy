id=$(docker create meteor/simple-app)
docker cp $id:/opt/dist/src.tar.gz /root/docker-meteor-deploy/tar/src.tar.gz
docker rm -v $id
