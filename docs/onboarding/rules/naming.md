---
id: NAME-01
section: naming
source:
  - models/bronze/brz_leases.sql
  - models/silver/slv_leases.sql
  - models/gold/gld_rent_roll.sql
  - models/bronze/_sources.yml
interpretation: false
---

# Naming

- Models: `brz_<entity>`, `slv_<entity>`, `gld_<subject>`; snake_case; one model per file.
- Landing tables are named after the input file stem in snake_case (`Rent Payments.csv` becomes `raw.rent_payments`).
- Column names are snake_case nouns; dates end in `_date` or `_on`; amounts carry their currency in a sibling column.
- Verify: file names under `models/` carry the prefix of their layer folder.
