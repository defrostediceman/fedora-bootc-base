FROM quay.io/fedora/fedora-bootc:41

RUN dnf install -y cockpit \
                    cockpit-podman \ 
                    cockpit-storaged \
                    cockpit-machines \
                    cockpit-networkmanager \
                    cockpit-files \
                    qemu \
                    qemu-kvm \
                    firewalld \
                    crun-vm \
                    git \
                    neovim \
                    tmux \
                    bash-completion \
                    && dnf clean all

RUN systemctl enable fstrim.timer \ 
                        cockpit.socket \
                        podman.socket \
                        podman-auto-update.timer \
