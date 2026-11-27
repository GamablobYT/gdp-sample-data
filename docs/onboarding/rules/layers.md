---
id: ARCH-01
section: Layers
source: models/ (bronze, silver, gold folders in this repository)
interpretation: false
---

# Bronze, silver, gold

- Every input file lands in `raw.<table>` as received (all text) and gets exactly one bronze model
  `brz_<table>` that casts each column per the file's column contract. Nothing else reads `raw`.
- Silver models (`slv_*`) clean and conform one entity: trim keys, upper-case codes, derive simple columns.
- Gold models (`gld_*`) are consumer-facing aggregates; they read only silver.
- Bronze models are views; silver and gold are tables (`dbt_project.yml`).
