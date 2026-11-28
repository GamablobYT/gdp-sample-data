# Bronze example: `brz_leases`

`models/bronze/brz_leases.sql` is one cast per column of `raw.leases`, in contract order, reading only
`source('raw', 'leases')`; `models/bronze/_bronze.yml` carries the key tests. Copy its shape for a new landing table.
