# Docker-Sftp

[![](https://img.shields.io/github/workflow/status/mdsd-tools/Docker-Sftp/Docker)](https://github.com/mdsd-tools/Docker-Sftp/actions/workflows/docker-publish.yml)
[![](https://img.shields.io/github/tag/mdsd-tools/Docker-Sftp.svg)](https://github.com/orgs/mdsd-tools/packages/container/package/sftp-server)
[![](https://img.shields.io/github/issues/mdsd-tools/Docker-Sftp.svg)](https://github.com/mdsd-tools/Docker-Sftp/issues)
[![](https://img.shields.io/github/license/mdsd-tools/Docker-Sftp.svg)](https://github.com/mdsd-tools/Docker-Sftp/blob/master/LICENSE)

Docker image for SFTP server that also allows executing bash commands.

There is a volume for the SSH keys of the server. In order to allow logins, you have to bind an `authorized_keys` file in `/home/sftp/.ssh`. Please note that the owner of this file in the host system has to be user 1000 and the file should only be readable (not writable) by the owner.

By default, the user cannot write to any directory. You have to mount a writable volume that can be used for sftp.

Docker images are available on the [Github Docker Registry](https://github.com/orgs/mdsd-tools/packages/container/package/sftp-server).
