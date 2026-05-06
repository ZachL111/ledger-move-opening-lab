# ledger-move-opening-lab

`ledger-move-opening-lab` is a Elixir project in chess and game engines. Its focus is to build an Elixir toolkit that studies opening behavior through deny and allow fixtures, with explainable decision traces and synthetic fixtures only.

## Reason For The Project

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Ledger Move Opening Lab Review Notes

`stress` and `baseline` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## What It Does

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/ledger-move-opening-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `move ordering` and `position pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Elixir addition stays small enough to inspect in one sitting.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The same command runs the local verification path. The highest-scoring domain case is `stress` at 224, which lands in `ship`. The most cautious case is `baseline` at 105, which lands in `watch`.

## Boundaries

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
