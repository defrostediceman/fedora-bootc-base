FROM quay.io/fedora/fedora-bootc:41

RUN dnf install -y cockpit-system \
                    cockpit-podman \ 
                    cockpit-storaged \
                    cockpit-machines \
                    cockpit-networkmanager \
                    cockpit-files \
                    qemu-kvm \
                    crun-vm \
                    git \
                    neovim \
                    tmux \
                    bash-completion \
                    && dnf clean all

RUN systemctl enable fstrim.timer \ 
                        podman.socket \
                        podman-auto-update.timer \
