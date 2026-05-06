# Ledger Move Opening Lab Walkthrough

I use this file as a small checklist before changing the Elixir implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | position pressure | 105 | watch |
| stress | move ordering | 224 | ship |
| edge | search width | 202 | ship |
| recovery | endgame risk | 171 | ship |
| stale | position pressure | 194 | ship |

Start with `stress` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around move ordering and endgame risk.
