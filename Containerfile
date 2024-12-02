FROM quay.io/fedora/fedora-bootc:41

ADD etc etc

ADD usr usr

RUN dnf install -y cockpit \
                    cockpit-podman \ 
                    cockpit-storaged \
                    qemu-kvm \
                    cockpit-machines \
                    cockpit-ws \
                    git \
                    neovim \
                    bash-completion \
                    && dnf clean all

RUN systemctl enable fstrim.timer \ 
                        podman.socket \
                        podman-auto-update.timer \
                        cockpit.socket
