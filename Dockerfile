FROM alpine:latest

ENV VOL_SSH=/init/ssh

RUN mkdir -p ${VOL_SSH} && \
    apk --no-cache add openssh-server openssh-sftp-server && \
    adduser sftp -D && \
    chown root:root /home/sftp && \
    sed -i -e "s/sftp:!:/sftp:\*:/" /etc/shadow && \
    mkdir -p /home/sftp/.ssh && \
    touch /home/sftp/.ssh/authorized_keys && \
    chmod 755 /tmp && \
    chmod 755 /home/sftp && \
    chmod 750 /home/sftp/.ssh && \
    chgrp sftp /home/sftp/.ssh && \
    chmod 600 /home/sftp/.ssh/authorized_keys

COPY sshd_config /etc/ssh
COPY init.sh /init

WORKDIR /init

VOLUME ["/init/ssh"]

EXPOSE 22

CMD ["./init.sh"]
