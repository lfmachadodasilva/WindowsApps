* show all images available
> docker images

* show all container available
> docker ps

* show all container active
> docker ps -a

* show running log
> docker logs -f CONTAINER_ID

* remove and stop all containers
> docker rm -f $(docker ps -aq)

* delete all images
> docker rmi $(docker images -q)

* start/stop
> docker stop/start CONTAINER_ID

* remove images
> docker rmi
`docker rmi`

* run by step
```
# delete all images
docker rmi $(docker images -q)
# build
docker build --target build . -t build
# ui unit-tests
docker build --target unit-tests . -t unit-tests --cache-from build
docker run --rm -i unit-tests-ui
# ui pact-tests
docker build --target final . -t final --cache-from build
docker run --rm -i final
```
