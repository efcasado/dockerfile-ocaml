# OCaml Dockerfile

Dockerized, debian-based OCaml development environment.


### Aliases

When using this dev environment, I strongly recommend you to define the
following aliases. These will let you seamlessly work with OCaml, locally,
despite it running inside a Docker container.

> Note that all these aliases require the **DKR_ML_IMAGE** and **DKR_ML_OPTS**
> environment variables to be set. In my set-up, I am setting them to
> 'ocaml' and '-it --rm -v $(pwd):/code -w /code -e HOME=/tmp', respectively,
> but they could be set to other values that meet better your requirements.
>
> The **DKR_ML_{OCAML, OCAMLC, OCAMLRUN}_OPTS** environment variables are
> optional and are used to specify settings that are specific to the command
> they refer to (i.e. ocaml, ocamlc, ocamlrun).


#### ocaml

The OCaml interactive toplevel

```bash
alias ocaml="docker run $DKR_ML_OPTS $DKR_ML_OCAML_OPTS --entrypoint ocaml $DKR_ML_IMAGE"
```

#### ocamlc

The OCaml bytecode compiler

```bash
alias ocamlc="docker run $DKR_ML_OPTS $DKR_ML_OCAMLC_OPTS --entrypoint ocamlc $DKR_ML_IMAGE"
```

#### ocamlrun

The OCaml bytecode interpreter

```bash
alias ocamlrun="docker run $DKR_ML_OPTS $DKR_ML_OCAMLRUN_OPTS --entrypoint ocamlrun $DKR_ML_IMAGE"
```


### How do I know it works?

Assuming you've defined the aliases I mentioned in the section above, you just
need to create a simple OCaml program, like the `hello.ml` program that ships
with this Git respository and run the following commands. If everything worked
correctly, you should now see the `Hello, world!` message printed in your
terminal.

```ocaml
(* File: hello.ml

   "Hello world" program written in OCaml. *)

print_string "Hello, world!\n";;
```

```bash
> ocamlc hello.ml -o hello
> ocamlrun hello
Hello, world!
```


### Author(s)

  - Enrique Fernandez `<efcasado(at)gmail.com>`


### License

> The MIT License (MIT)
>
> Copyright (c) 2016, Enrique Fernandez
>
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
>
> The above copyright notice and this permission notice shall be included in
> all copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> THE SOFTWARE.
