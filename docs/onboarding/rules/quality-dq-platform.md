---
id: DQ-02
section: quality
source:
  - soda/contracts/slv_leases.yml
  - CDO-20@sha256:8a441b94f527e258
interpretation: true
---

# Mandatory CDEs have a check; severity follows the layer

Every mandatory CDE has at least one quality check (dbt test or Soda check). Bronze source checks warn; silver and gold
checks fail (`docs/onboarding/templates/quality-check-*.yml`). Verify: each mandatory CDE of the spec appears in a check.

> Interpretation — confirm with CBRE
