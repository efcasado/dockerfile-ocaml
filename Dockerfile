###------------------------------------------------------------------------
### File: Dockerfile
###
### Alpine-based OCaml development environment.
###
### Author(s):
###   - Enrique Fernandez <efcasado@gmail.com>
###------------------------------------------------------------------------
##== Preamble =============================================================
FROM       alpine:3.6
MAINTAINER Enrique Fernandez <efcasado@gmail.com>


##== Layers ===============================================================
RUN apk --no-cache add ocaml opam
