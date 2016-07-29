###------------------------------------------------------------------------
### File: Dockerfile
###
### Debian-based OCaml development environment.
###
### Author(s):
###   - Enrique Fernandez <efcasado@gmail.com>
###------------------------------------------------------------------------
FROM       debian:8.5
MAINTAINER Enrique Fernandez <efcasado@gmail.com>

# Install OCaml
RUN apt-get update             && \
    apt-get install -y            \
        libpcre-ocaml-dev         \
        oasis                     \
        ocaml-native-compilers    \
        ocaml-nox              && \
     apt-get clean             && \
     rm -rf                       \
        /var/lib/apt/lists/*      \
        /tmp/*                    \
        /var/tmp/*
