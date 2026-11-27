---
id: DQ-01
section: Data quality
source: models/**/_*.yml tests and soda/contracts/ in this repository
interpretation: false
---

# Data quality checks

- Every model's primary key has `not_null` and `unique` tests.
- Every non-nullable column in a column contract has a `not_null` test on its bronze model.
- Each new silver model gets a Soda contract under `soda/contracts/` with at least a `missing` check on its key
  and a `row_count` check.
