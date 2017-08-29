# OCaml Dockerfile
[![Travis](https://img.shields.io/travis/efcasado/dockerfile-ocaml.svg?style=flat)](https://travis-ci.org/efcasado/dockerfile-ocaml)

Dockerized, Alpine-based OCaml development environment.


### Versions

| OCaml Version | OPAM Version | Base Image   |
|:--------------|:------------:|:------------:|
| `4.05.0`      | `1.2.2`      | `alpine:3.6` |
| `4.04.2`      | `1.2.2`      | `alpine:3.6` |
| `4.04.1`      | `1.2.2`      | `alpine:3.6` |


### Aliases

When using this dev environment, I strongly recommend you to use the aliases
included in the `.bashrc` file featured in this repository. These aliases
will let you work with OCaml, seamlessly, despite it running inside a Docker
container.

```bash
source ./dotfiles/.bashrc
```

| Alias        | Description                            |
|:-------------|:---------------------------------------|
| `ocaml`      | The OCaml interactive toplevel         |
| `ocamlc`     | The OCaml bytecode compiler            |
| `ocamlcp`    | The OCaml profiling compilers          |
| `ocamldebug` | The OCaml profiling compilers          |
| `ocamldep`   | Dependency generator for Ocaml         |
| `ocamldoc`   | The OCaml documentation generator      |
| `ocamllex`   | The OCaml lex generator                |
| `ocamlmktop` | Building custom top-level systems      |
| `ocamlopt`   | The OCaml native-code compiler         |
| `ocamlrun`   | The OCaml bytecode interpreter         |
| `ocamlprof`  | The OCaml profiler                     |
| `ocamlyacc`  | The OCaml parser generator             |
| `opam`       | The OCaml source-level replay debugger |


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
> Copyright (c) 2016 - 2017, Enrique Fernandez
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
