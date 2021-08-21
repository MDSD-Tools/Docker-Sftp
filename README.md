# Docker-Sftp

[![](https://github.com/MDSD-Tools/Docker-Sftp/actions/workflows/docker-publish.yml/badge.svg?branch=main)](https://github.com/MDSD-Tools/Docker-Sftp/actions?query=branch%3Amain+)
[![](https://img.shields.io/github/issues/mdsd-tools/Docker-Sftp.svg)](https://github.com/mdsd-tools/Docker-Sftp/issues)
[![](https://img.shields.io/github/license/mdsd-tools/Docker-Sftp.svg)](https://github.com/mdsd-tools/Docker-Sftp/blob/master/LICENSE)

Docker image for SFTP server that also allows executing bash commands.

There is a volume for the SSH keys of the server. In order to allow logins, you have to bind an `authorized_keys` file in `/home/sftp/.ssh`. Please note that the owner of this file in the host system has to be user 1000 and the file should only be readable (not writable) by the owner.

By default, the user cannot write to any directory. You have to mount a writable volume that can be used for sftp.

Docker images are available on the [MDSD.tools Registry](https://docker.mdsd.tools/?#!taglist/sftp-server).
