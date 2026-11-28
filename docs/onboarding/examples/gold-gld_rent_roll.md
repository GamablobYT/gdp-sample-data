# Gold example: `gld_rent_roll`

`models/gold/gld_rent_roll.sql` aggregates `ref('slv_leases')` per property and currency and leaves out the
Confidential `tenant_name`; tests in `models/gold/_gold.yml`.
