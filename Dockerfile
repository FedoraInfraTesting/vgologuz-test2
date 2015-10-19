FROM fedora:latest
### DOPR START, code until tag `DOPR END` was auto-generated by dopr service

RUN yum install -y dnf dnf-plugins-core \
    && mkdir -p /etc/yum.repos.d/
RUN dnf copr enable -y petersen/cabal-install && \
    dnf copr enable -y msuchy/copr
### DOPR END

RUN dnf install -y python-copr copr-cli

