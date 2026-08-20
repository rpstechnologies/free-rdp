#!/bin/bash
set -e

mkdir -p /run/sshd

# Railway provides the public listening port through $PORT.
# SSH itself listens internally on 22.
if [ -n "${PORT:-}" ]; then
    sed -i "s/^#\?Port .*/Port 22/" /etc/ssh/sshd_config
fi

# Keep the requested root/root credentials unchanged.
echo 'root:root' | chpasswd

exec /usr/sbin/sshd -D -e
