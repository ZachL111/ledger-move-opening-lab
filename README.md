# ledger-move-opening-lab

`ledger-move-opening-lab` is a focused Elixir codebase around build an Elixir toolkit that studies opening behavior through deny and allow fixtures, with explainable decision traces and synthetic fixtures only. It is meant to be easy to inspect, run, and extend without a hosted service.

## Ledger Move Opening Lab Walkthrough

I would read the project from the outside in: command, fixture, model, then roadmap. That keeps the chess and game engines idea grounded in files that can be checked locally.

## Reason For The Project

This project keeps the domain idea close to the tests. That makes it useful as a reference implementation, a small experiment, or a starting point for a more specialized tool.

## Where Things Live

- `lib`: library code
- `test`: language test directory
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Capabilities

- Includes extended examples for turn flow, including `recovery` and `degraded`.
- Documents search limits tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## How It Is Put Together

The project is organized around a compact model rather than a large framework. Inputs are scored, classified, and checked against golden fixtures. The constants live in code and are mirrored in metadata so documentation drift is easy to catch. The Elixir project uses Mix and ExUnit with clear data maps for each scenario.

## Getting It Running

The only required setup is the local Elixir toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.

## Data Notes

`boundary` is the first example I would inspect because it lands on the `review` path with a score of 136. The broader file also keeps `degraded` at 17 and `recovery` at 237, which gives the model a useful low-to-high spread.

## Command Examples

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Check The Work

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Possible Extensions

- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add one more chess and game engines fixture that focuses on a malformed or borderline input.

## Tradeoffs

The scoring model is simple by design. More domain-specific behavior should be added through explicit adapters or extra fixture classes rather than hidden constants.
