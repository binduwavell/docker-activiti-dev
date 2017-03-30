# docker-activiti-dev

This repository contains scripts and configuration for spinning up
Docker containers that can be used for Activiti development.

Currently this is focused on the paid version of Activiti. This requires
a license to run. Place your license file in 
`mount/tomcat/lib/activiti.lic`. This has been added to the .gitignore,
it must not be checked into source control.

Say you want to work with Activiti 1.5.3, you would run the following:

```
> # State which version of Alfresco to use
> source ./1.5.3.sh
> # Build an appropriate Docker image
> ./build.sh
> # Spin up a container from the image
> ./run.sh
```

If you'd prefer to work in the image interactively, use the following
instead of the raw `run.sh` command.

```
> ./run.sh bash
docker> # Inside the container we need to start Activiti
docker> /host/scripts/start.sh
```

## Alfresco has an official image for this now

See the docs here: http://docs.alfresco.com/process-services1.6/concepts/ps_installing_docker.html

## TODO

- Use something like confd to provide a convenient way of updating 
  configuration files

- Figure out how to allow users to inject a license

- Create an init script that does not daemonize Tomcat

- Init script should be able to apply customizations

- Ideally allow specification of options such as adding CORS JAR

- Work on a way to cache the Activiti installs outside of docker for faster image
  building. The Docker team is discussing adding a `--mount` option to `docker build`
  that should make this work.
