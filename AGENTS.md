# AGENTS.md — property_ops

Notes for people live above and below the managed block; the block itself is maintained by `bmad-project-context`.

<!-- bmad:context -->
<!-- Verified 2026-11-27 against the sample's initial commit. Managed by bmad-project-context; edits inside this block are replaced on refresh. Keep anything you want preserved outside the markers. -->

## property_ops

dbt project for property operations data (leases and rent roll). dbt-core 1.12 on DuckDB locally and in CI,
Snowflake in hosted deployments. Onboarding rules live in `docs/onboarding/`; specs in `specs/<JIRA-KEY>/`.

## Policy

- Never push to main; every change arrives as a pull request from a ticket branch.
- Never commit intake files or real data; CI runs on synthetic fixtures in `tests/fixtures/`.
- Follow `docs/onboarding/rules/*.md`; cite the rule id when a decision depends on one.

## Where things are

- Landing source `raw` and bronze models: `models/bronze/`; silver: `models/silver/`; gold: `models/gold/`.
- Warehouse-specific SQL: `macros/` (adapter.dispatch only).
- Soda contracts: `soda/contracts/`. CI: `.github/workflows/dbt-ci.yml`.

## Running and verifying

- In the GDP app use the `dbt_build`, `soda_scan` and `load_intake` tools; they are pinned to the ticket's warehouse.
- Outside the app: load `tests/fixtures/*.csv` into `raw.<table>` and run `dbt build` with a DuckDB profile.

## Conventions that differ from defaults

- One bronze model per landing table, casting per the column contract in `specs/<KEY>/contracts/`.
- Dates are `date`; money is `decimal(12,2)` with a sibling `currency` column.

## Known pitfalls

- `datediff` differs between warehouses: use the `days_between` macro.

<!-- /bmad:context -->
