# Tree-sitter ZenOS

ZenOS DSL grammar for `.zcfg`, `.zmdl`, `.zpkg` and `.zstr` files. Forked from nix-community/tree-sitter-nix (MIT; original attribution retained in LICENSE).

Adds top-level statements, `_import`, typed `_let`, scoped actions, conditional blocks, update assignments, structural markers, dollar variables, dynamic attributes and ZenOS version literals to the Nix expression grammar.

Run `tree-sitter generate`, then `./test-zenos.sh /path/to/zenpkgs`. The original `test/corpus` covers the upstream Nix expression root; the ZenOS regression fixture is `test/zenos/syntax.zcfg`.

The parser is for editor structure, not semantic validation. The canonical ZenOS compiler remains authoritative.
