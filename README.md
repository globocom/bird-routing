# Bird Internet routing daemon
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://raw.githubusercontent.com/globocom/bird-routing/master/LICENSE)


Docker image of the [Bird Internet routing daemon](http://bird.network.cz/).

> BIRD is an Internet Routing Daemon designed to support all the routing technology used in the today's Internet or planned to be used in near future and to have a clean extensible architecture allowing new routing protocols to be incorporated easily.

## Running
```bash
$> docker run -d globocom/bird-routing
```
Some Operating systems may not allow the Bird Daemon to load because it needs *privileged access*.
Sometimes it will be necessary to run the container using **--privileged**. Be responsible with that!
If you just want to get in the container up and running do:
```bash
$> docker run --name bird_router --interactive --tty --privileged --rm globocom/bird-routing 
```

If you want to override ```bird.conf``` file use:
```bash
# IPv4 configuration file: /etc/bird/bird.conf
$> docker run -v /host-machine/path/to/bird.conf:/etc/bird/bird.conf --privileged -d globocom/bird-routing

# IPv6 configuration file: /etc/bird/bird6.conf
$> docker run -v /host-machine/path/to/bird6.conf:/etc/bird/bird.conf --privileged -d globocom/bird-routing
```

## Building
```bash
$> docker build --tag bird-routing:0.2.0 .
```
> Use **--no-cache** to rebuild entirely the image

## Contributing
We are not restringent with that. Just fork, modify and send a pull request. Remember to describe well what you've done :)

