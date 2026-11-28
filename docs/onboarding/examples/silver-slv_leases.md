# Silver example: `slv_leases`

`models/silver/slv_leases.sql` reads only `ref('brz_leases')`, trims and upper-cases keys and codes, derives
`lease_days` through the `days_between` macro (no warehouse-specific SQL in the model), and has a Soda contract in
`soda/contracts/slv_leases.yml`.
