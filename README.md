# ocaml-mnemonic

mnemonic is an OCaml implementation of mnemonic code for generating deterministic keys in other words, it is an implementation of [BIP-0039](https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki) (Bitcoin Improvement Proposal) which introduces a mechanism to generate mnemonics (group of words) and convert them into a binary seed.

See also the [reference implementation written in Python](https://github.com/trezor/python-mnemonic).

## Development

Install [`opam`](https://opam.ocaml.org/), then follow instructions below to install dependencies, build the project, and run it.

```console
; opam install .
; dune build
```

## Usage

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

## License

[BSD-3-Clause](./LICENSE)
