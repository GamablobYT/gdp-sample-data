-- Bronze: typed copy of the landed lease register (contract: docs/onboarding/examples/leases-source.md).
select
    cast(lease_id as integer)              as lease_id,
    cast(property_id as varchar)           as property_id,
    cast(tenant_name as varchar)           as tenant_name,
    cast(start_date as date)               as start_date,
    cast(end_date as date)                 as end_date,
    cast(monthly_rent as decimal(12, 2))   as monthly_rent,
    cast(currency as varchar)              as currency
from {{ source('raw', 'leases') }}
