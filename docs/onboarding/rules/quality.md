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

- Every model's primary key has `not_null` and `unique` tests.
- Every non-nullable column in a column contract has a `not_null` test (on the `raw` source and its bronze model).
- Each new silver model gets a Soda contract under `soda/contracts/` with at least a `missing` check on its key
  and a `row_count` check.
- Verify: compare the model YAML under `models/**/_*.yml` with the contract and with `soda/contracts/`.
