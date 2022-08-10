(lang dune 3.4)
(name mnemonic)
(version 0.0.1)
(generate_opam_files true)
(source (github booklearner/ocaml-mnemonic))
(homepage "https://github.com/booklearner/ocaml-mnemonic")
(authors "booklearner <booklearner@proton.me>")
(maintainers "booklearner <booklearner@proton.me>")
(license BSD-3-Clause)

(package
 (name mnemonic)
 (synopsis "OCaml implementation of mnemonic code for generating deterministic keys")
 (description 
  "mnemonic is an OCaml implementation of mnemonic code for generating deterministic keys.
In other words, it is an implementation of BIP-0039 (Bitcoin Improvement Proposal) which
introduces a mechanism to generate mnemonics (group of words) and convert them into a
binary seed. See https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki for more
information.")
 (depends ocaml dune ocamlformat base dune-build-info))
