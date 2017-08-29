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
export OCAML_VERSION=4.05.0

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

function ocamlcp() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocamlcp $*"
}

function ocamldebug() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocamldebug $*"
}

function ocamldep() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocamldep $*"
}

function ocamldoc() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocamldoc $*"
}

function ocamllex() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocamllex $*"
}

function ocamlmktop() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocamlmktop $*"
}

function ocamlopt() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocamlopt $*"
}

function ocamlrun() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocamlrun $*"
}

function ocamlprof() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocamlprof $*"
}

function ocamlyacc() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE ocamlyacc $*"
}

function opam() {
    bash -c "docker run $OCAML_DKR_RUN_OPTS $OCAML_DKR_IMAGE opam $*"
}

