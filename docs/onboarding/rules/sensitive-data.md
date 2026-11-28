---
id: SENS-01
section: sensitive-data
source:
  - specs/PROP-1/SPEC.md
  - models/gold/gld_rent_roll.sql
  - AGENTS.md
  - CDO-15@sha256:8a441b94f527e258
  - CDO-17@sha256:8a441b94f527e258
interpretation: true
---

# Sensitive data

- Every column named in the application owner's CDE list carries one class from its sensitivity column (Public,
  Internal, Confidential, Restricted); the spec lists the class per column.
- Personal data (names, e-mails, phone numbers) is at least Confidential and has a stated handling.
- Confidential and Restricted columns are never exposed in gold models unless the spec names the consumer and the data
  owner approved it. Prefer hashing or dropping them before gold; here silver keeps `tenant_name` and `gld_rent_roll` omits it.
- Intake files and real data are never committed; CI uses synthetic fixtures under `tests/fixtures/`.

> Interpretation — confirm with CBRE
