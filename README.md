# podman-deploy
Easily build and (re-) deploy podman containers (pod) as a systemd service using podman-compose

Depends on:
* podman
* podman-compose (https://github.com/containers/podman-compose)
* systemd

Place it where you like it. 
It can take regular parameters for `podman-compose up` like `--build` 
`-d` is included and necessary.

To be run with sudo, it does not (yet) support non-root containers.
