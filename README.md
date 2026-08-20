# Railway SSH Container

A minimal Debian container with OpenSSH enabled.

## Credentials

- User: `root`
- Password: `root`

The startup script intentionally resets the root password to `root` each time the container starts.

## Railway

Deploy this repository as a Dockerfile-based service.

The container listens for SSH on internal port `22`.

For Railway, configure the service's TCP networking/public TCP port as appropriate for your plan/project. Railway may expose a public TCP address such as:

`<host>:<port>`

Connect from a local SSH client with:

`ssh root@<host> -p <port>`

## Important

This is an administrative test container. The password `root` is extremely weak and should not be exposed to the public Internet for anything sensitive.

This container is a Linux environment, not a virtual machine. Installing an OS/VM image such as Winux11 inside it may require additional virtualization/emulation support (for example QEMU and possibly KVM), which Railway may not provide.

The included docker-compose.yml is mainly for local testing; Railway can build directly from the Dockerfile.
