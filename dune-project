(lang dune 3.12)

(name sand_castle)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Author Name")

(maintainers "Maintainer Name")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name sand_castle)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends utop ocaml dune ocaml-canvas)
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
