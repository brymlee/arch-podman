FROM docker.io/archlinux:latest
RUN pacman -Syu podman vim --noconfirm
COPY storage.conf /etc/containers/storage.conf
USER root
CMD ["podman", "run", "-it", "--rm", "--events-backend=file", "--cgroup-manager=cgroupfs", "docker.io/hello-world"]
