# Example: the lease register (already onboarded)

- Input: `leases.csv` → `raw.leases` → `brz_leases` → `slv_leases` → `gld_rent_roll`.
- Column contract: lease_id integer not null; property_id varchar not null; tenant_name varchar; start_date date
  not null; end_date date; monthly_rent decimal(12,2) not null; currency varchar not null.
- Sensitive columns: tenant_name (Confidential) — kept in silver, not exposed in gold.
- Checks: dbt not_null/unique on lease_id; accepted_values on currency; Soda contract `soda/contracts/slv_leases.yml`.
