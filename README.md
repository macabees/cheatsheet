# cheatsheet
Displays cheatsheet from https://github.com/cheat/cheat 

## cheatsheet (Project Info)
[Website](https://github.com/cheat/cheat)

## Docker Hub
[Website](https://hub.docker.com/r/macabees/cheatsheet/)

## Build image
`$ docker build -t macabees/cheatsheet:latest .`

## Docker Push
`$ docker push -t macabees/cheatsheet:latest`

Note: requires `docker login`

## Run image
`$ docker run -it --rm --name cheatsheet macabees/cheatsheet`

To view a cheatsheet ("top-level"):

`$ docker run -it --rm --name cheatsheet macabees/cheatsheet tar`

To view a cheatsheet ("nested"):

`$ docker run -it --rm --name cheatsheet macabees/cheatsheet foo/bar`

To list all available cheatsheets:

`$ docker run -it --rm --name cheatsheet macabees/cheatsheet -l`

To search for the phrase "ssh" among cheatsheets:

`$ docker run -it --rm --name cheatsheet macabees/cheatsheet -s ssh`

## Help
`$ docker run -it --rm macabees/cheatsheet --help`
