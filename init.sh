#!/bin/sh

if [ ! -f $VOL_SSH/ssh_host_ed25519_key ] || [ ! -f $VOL_SSH/ssh_host_rsa_key ]; then
    echo "Initializing sshd keys in volume"
    rm -f $VOL_SSH/*
    ssh-keygen -q -N "" -t ed25519 -f $VOL_SSH/ssh_host_ed25519_key
    ssh-keygen -q -N "" -t rsa -f $VOL_SSH/ssh_host_rsa_key
    chmod 600 $VOL_SSH/*
fi

echo "Using sshd keys from volume"
rm -f /etc/ssh/ssh_host_*
ln -s $VOL_SSH/ssh_host_rsa_key /etc/ssh/ssh_host_rsa_key
ln -s $VOL_SSH/ssh_host_ed25519_key /etc/ssh/ssh_host_ed25519_key


echo "Starting server"
exec /usr/sbin/sshd -D -e
