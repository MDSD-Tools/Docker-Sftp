# Docker-Sftp

[![](https://img.shields.io/github/workflow/status/kit-sdq/Docker-Sftp/Docker)](https://github.com/kit-sdq/Docker-Sftp/actions/workflows/docker-publish.yml)
[![](https://img.shields.io/github/tag/kit-sdq/Docker-Sftp.svg)](https://github.com/orgs/kit-sdq/packages/container/package/sftp-server)
[![](https://img.shields.io/github/issues/kit-sdq/Docker-Sftp.svg)](https://github.com/kit-sdq/Docker-Sftp/issues)
[![](https://img.shields.io/github/license/kit-sdq/Docker-Sftp.svg)](https://github.com/kit-sdq/Docker-Sftp/blob/master/LICENSE)

Docker image for SFTP server that also allows executing bash commands.

There is a volume for the SSH keys of the server. In order to allow logins, you have to bind an `authorized_keys` file in `/home/sftp/.ssh`. Please note that the owner of this file in the host system has to be user 1000 and the file should only be readable (not writable) by the owner.

By default, the user cannot write to any directory. You have to mount a writable volume that can be used for sftp.

Docker images are available on the [Github Docker Registry](https://github.com/orgs/kit-sdq/packages/container/package/sftp-server).
