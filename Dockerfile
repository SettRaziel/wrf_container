FROM archlinux/base:latest
LABEL maintainer="Benjamin Held <me@bheld.eu>"

RUN pacman -Syy && pacman -Syu --noconfirm && pacman -S --noconfirm git sudo base-devel
RUN useradd -s /bin/bash -m wrfuser
RUN printf 'wrfuser ALL=(ALL) ALL\n' | tee -a /etc/sudoers
RUN echo 'wrfuser ALL = NOPASSWD: /bin/pacman' << /etc/sudoers

USER wrfuser
WORKDIR /home/wrfuser
RUN git clone https://github.com/SettRaziel/wrf_archlinux.git
RUN cd wrf_archlinux/wrf_deploy/ && ./deploy_wrf.sh && sudo pacman --noconfirm -Sc
