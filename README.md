# mnemonic

mnemonic is an OCaml implementation of mnemonic code for generating deterministic keys in other words, it is an implementation of [BIP-0039](https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki) (Bitcoin Improvement Proposal) which introduces a mechanism to generate mnemonics (group of words) and convert them into a binary seed.

See also the [reference implementation written in Python](https://github.com/trezor/python-mnemonic).

## Development

For a quick introduction to [OCaml](https://ocaml.org), browse the [official documentation](https://ocaml.org/docs). For a deeper understanding, check out [Real World OCaml](https://dev.realworldocaml.org/).

Install [`opam`](https://opam.ocaml.org/), then follow instructions below to install dependencies, build the project, and run it.

```console
; opam install .
; dune build
```

## Usage

`mnemonic` can be used as a standalone CLI tool to generate keys

```console
; dune build @install
; mnemonic --help
mnemonic [options]
  -l  Specify the length of the mnemonic phrase (default is 24).
  -o  Specify the file to write the output to (default is stdout).
  --version  Display the version of the currently installed mnemonic.
  -help  Display this list of options
  --help  Display this list of options
```

To use as a library in another codebase, install `mnemonic` from [opam](https://opam.ocaml.org/).

```console
; opam install mnemonic
```

`dune`:
```
(library
  (name <your library name>)
  (libraries mnemonic))
```

`<program>.ml`
```ocaml
open Mnemonic

(* TODO: add usage examples *)
```

## TODO

- [ ] finalize the exposed interface functions in a `.mli` file
- [ ] test against reference implementation test suite
- [ ] publish `mnemonic` to opam

## License

[BSD-3-Clause](./LICENSE)
