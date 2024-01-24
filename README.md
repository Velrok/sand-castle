# sand-castle

Attempting the [Falling sand coding challenge](https://www.youtube.com/watch?v=L4u7Zy_b868)

## install

1. make sure you have a local opam switch `opam switch create .`
1. than install dune `opam install dune`
1. than have dune init the deps via via `dune build` (which will fail, which is ok)
1. than have install deps with `opam install . --deps-only`
1. than build again `dune build` this time it should run without issue
1. than execute `./_build/default/bin/main.exe`
