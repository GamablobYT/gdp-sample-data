---
id: PORT-01
section: portability
source:
  - macros/days_between.sql
  - .github/workflows/dbt-ci.yml
  - AGENTS.md
interpretation: false
---

# Warehouse-agnostic SQL

- Models run unchanged on DuckDB (local, CI) and Snowflake. Warehouse-specific SQL lives only in `adapter.dispatch`
  macros under `macros/` (see `days_between`).
- Never call DuckDB-only functions (`read_csv`, `strptime`, `list_value`, `epoch_ms`, ...) in a model; the CI lint fails.
