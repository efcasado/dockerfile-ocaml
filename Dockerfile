###------------------------------------------------------------------------
### File: Dockerfile
###
### Alpine-based OCaml development environment.
###
### Author(s):
###   - Enrique Fernandez <efcasado@gmail.com>
###------------------------------------------------------------------------
##== Preamble =============================================================
ARG        ALPINE_VERSION=3.6
FROM       alpine:${ALPINE_VERSION}
MAINTAINER Enrique Fernandez <efcasado@gmail.com>
ARG        OCAML_MAJOR=4.04
ARG        OCAML_VERSION=4.04.1
ARG        OPAM_VERSION=1.2.2


##== Layers ===============================================================
# Miscellany
RUN apk --no-cache add \
      build-base \
      wget \
      openssl \
      ca-certificates \
      bash \
      m4 \
      git \
      rsync \
      mercurial \
      patch \
      perl \
      aspcud

# OCaml and OPAM
RUN wget http://caml.inria.fr/pub/distrib/ocaml-${OCAML_MAJOR}/ocaml-${OCAML_VERSION}.tar.gz && \
    tar xzf ocaml-${OCAML_VERSION}.tar.gz && \
    cd ocaml-${OCAML_VERSION} && \
    ./configure && make world.opt && umask 022 && make install && make clean && \
    cd .. && \
    rm -f ocaml-${OCAML_VERSION}.tar.gz && \
    rm -rf ocaml-${OCAML_VERSION} && \
    wget https://github.com/ocaml/opam/releases/download/${OPAM_VERSION}/opam-full-${OPAM_VERSION}.tar.gz && \
    tar zxf opam-full-${OPAM_VERSION}.tar.gz && \
    cd opam-full-${OPAM_VERSION} && \
    ./configure && make lib-ext && make && make install && \
    cd .. && \
    rm -f opam-full-${OPAM_VERSION}.tar.gz && \
    rm -rf opam-full-${OPAM_VERSION}
