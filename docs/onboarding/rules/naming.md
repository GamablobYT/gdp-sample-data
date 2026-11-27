---
id: NAME-01
section: Naming
source: models/ file names in this repository
interpretation: false
---

# Naming

- Models: `brz_<entity>`, `slv_<entity>`, `gld_<subject>`; snake_case; one model per file.
- Landing tables are named after the input file stem in snake_case (`Rent Payments.csv` becomes `raw.rent_payments`).
- Column names are snake_case nouns; dates end in `_date` or `_on`; amounts carry their currency in a sibling column.
