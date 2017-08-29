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


##== Layers ===============================================================
RUN apk --no-cache add build-base && \
    wget http://caml.inria.fr/pub/distrib/ocaml-${OCAML_MAJOR}/ocaml-${OCAML_VERSION}.tar.gz && \
    tar xzf ocaml-${OCAML_VERSION}.tar.gz && \
    cd ocaml-${OCAML_VERSION} && \
    ./configure && make world && make install && make clean && \
    cd .. && \
    rm -f ocaml-${OCAML_VERSION}.tar.gz && \
    rm -rf ocaml-${OCAML_VERSION} && \
    apk del build-base
