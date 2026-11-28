---
id: DQ-01
section: quality
source:
  - models/bronze/_bronze.yml
  - models/silver/_silver.yml
  - soda/contracts/slv_leases.yml
interpretation: false
---

# Data quality checks

- Every model's single-column primary key has `not_null` and `unique` tests (`lease_id` in bronze and silver); a
  composite grain such as `gld_rent_roll` (`property_id` + `currency`) has `not_null` tests on its columns.
- Every non-nullable column in a column contract has a `not_null` test on the `raw` source (`models/bronze/_sources.yml`);
  bronze and silver models repeat it for their key and mandatory measure columns.
- Each new silver model gets a Soda contract under `soda/contracts/` with at least a `missing` check on its key
  and a `row_count` check.
- Verify: compare the model YAML under `models/**/_*.yml` with the contract and with `soda/contracts/`.
