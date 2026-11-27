---
id: CDO-03
section: Sensitive data
source: CBRE baseline CDO-03 (data classification)
interpretation: true
---

# Sensitive data

- Every column named in the application owner's CDE list carries the class from its sensitivity column
  (Public, Internal, Confidential, Restricted); the spec lists the class per column.
- Confidential and Restricted columns are never exposed in gold models unless the spec names the consumer and the
  data owner approved it. Prefer hashing or dropping them in silver.
- Intake files and real data are never committed; CI uses synthetic fixtures under `tests/fixtures/`.
