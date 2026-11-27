# SPEC — Lease register (PROP-1)

The first source onboarded into property_ops, kept as an example of a finished spec.

## Purpose
Monthly rent roll per property for the finance dashboard.

## Owner and steward
- Data owner: @property-ops-owner
- Data steward: @property-ops-steward

## Inputs
| File | Landing table | Contract |
| --- | --- | --- |
| leases.csv | raw.leases | contracts/leases.yml |

## Models
| Layer | Model | Reads |
| --- | --- | --- |
| bronze | brz_leases | raw.leases |
| silver | slv_leases | brz_leases |
| gold | gld_rent_roll | slv_leases |

## Sensitive columns
| File | Column | Class | Handling |
| --- | --- | --- | --- |
| leases.csv | tenant_name | Confidential | kept in silver, not in gold |

## Data quality checks
- not_null + unique on lease_id (bronze, silver); accepted_values on currency; Soda contract on slv_leases.
