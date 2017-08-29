###========================================================================
### File: .bashrc
###
### Bash run commands.
###
###
### Author(s):
###   - Enrique Fernandez <efcasado@gmail.com>
###========================================================================
##== Environment variables ================================================
export OCAML_VERSION=4.04.2

##== Aliases ==============================================================
OCAML_DKR_IMAGE="efcasado/ocaml:\$OCAML_VERSION"
OCAML_DKR_RUN_OPTS="\
--rm \
-it \
-v \$(pwd):\$(pwd) \
-w \$(pwd) \
"

function ocaml() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocaml $*"
}

function ocamlc() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocamlc $*"
}

function ocamlrun() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocamlrun $*"
}

function opam() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE opam $*"
}

