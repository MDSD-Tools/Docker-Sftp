# Docker-Sftp

[![](https://img.shields.io/docker/cloud/build/kitsdq/sftp.svg)](https://hub.docker.com/r/kitsdq/sftp/builds)
[![](https://img.shields.io/github/tag/kit-sdq/Docker-Sftp.svg)](https://hub.docker.com/r/kitsdq/sftp/tags)
[![](https://img.shields.io/github/issues/kit-sdq/Docker-Sftp.svg)](https://github.com/kit-sdq/Docker-Sftp/issues)
[![](https://img.shields.io/github/license/kit-sdq/Docker-Sftp.svg)](https://github.com/kit-sdq/Docker-Sftp/blob/master/LICENSE)

Docker image for SFTP server that also allows executing bash commands.

There is a volume for the SSH keys of the server. In order to allow logins, you have to bind an `authorized_keys` file in `/home/sftp/.ssh`. Please note that the owner of this file in the host system has to be user 1000.

Docker images are available on [DockerHub](https://hub.docker.com/r/kitsdq/sftp).
