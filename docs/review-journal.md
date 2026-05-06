# Review Journal

I treated `ledger-move-opening-lab` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 105, lane `watch`
- `stress`: `move ordering`, score 224, lane `ship`
- `edge`: `search width`, score 202, lane `ship`
- `recovery`: `endgame risk`, score 171, lane `ship`
- `stale`: `position pressure`, score 194, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
