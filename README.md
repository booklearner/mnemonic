# ocaml-mnemonic

mnemonic is an OCaml implementation of mnemonic code for generating deterministic keys
in other words, it is an implementation of BIP-0039 (Bitcoin Improvement Proposal) which
introduces a mechanism to generate mnemonics (group of words) and convert them into a
binary seed. See https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki for more
information.

See also the [reference implementation written in Python](https://github.com/trezor/python-mnemonic).

## Development

Install [`opam`](https://opam.ocaml.org/), then follow instructions below to install dependencies, build the project, and run it.

```
; opam install .
; dune build
; dune exec mnemonic
```

## Usage

...

## License

[BSD-3-Clause](./LICENSE)
