---
id: ARCH-02
section: Portability
source: macros/days_between.sql; CBRE baseline ARCH-04
interpretation: false
---

# Warehouse-agnostic SQL

- Models must run unchanged on DuckDB (local, CI) and Snowflake. Warehouse-specific SQL lives only in
  `adapter.dispatch` macros under `macros/` (see `days_between`).
- Never call DuckDB-only functions (`read_csv`, `strptime`, `list_value`, `epoch_ms`, ...) in a model; CI fails.
