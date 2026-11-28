---
id: ARCH-01
section: layers
source:
  - dbt_project.yml
  - models/bronze/brz_leases.sql
  - models/silver/slv_leases.sql
  - models/gold/gld_rent_roll.sql
  - ARCH-01@sha256:8a441b94f527e258
interpretation: true
---

# Bronze, silver, gold

- Every input file lands in `raw.<table>` as received (all text) and gets exactly one bronze model `brz_<table>`
  that casts each column per the file's column contract. Nothing else reads `raw`.
- Silver models (`slv_*`) clean and conform one entity: trim keys, upper-case codes, derive simple columns.
- Gold models (`gld_*`) are consumer-facing aggregates; they read only silver. No layer is skipped.
- Bronze models are views; silver and gold are tables (`dbt_project.yml`).
- Verify: `source('raw', ...)` appears only in `models/bronze/`; each silver model `ref`s bronze, each gold model `ref`s silver.

> Interpretation — confirm with CBRE
