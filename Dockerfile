FROM alpine:latest

ENV VOL_SSH=/init/ssh

RUN mkdir -p ${VOL_SSH} && \
    apk --no-cache add openssh-server && \
    adduser sftp -D && \
    sed -i -e "s/sftp:!:/sftp:\*:/" /etc/shadow && \
    mkdir -p /home/sftp/.ssh && \
    touch /home/sftp/.ssh/authorized_keys && \
    chown sftp:sftp -R /home/sftp/.ssh && \
    chmod 700 /home/sftp/.ssh && \
    chmod 600 /home/sftp/.ssh/authorized_keys

COPY sshd_config /etc/ssh
COPY init.sh /init

WORKDIR /init

VOLUME ["/init/ssh"]

EXPOSE 22

CMD ["./init.sh"]
