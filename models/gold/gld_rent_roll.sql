-- Gold: monthly rent roll per property and currency.
select
    property_id,
    currency,
    count(*)            as lease_count,
    sum(monthly_rent)   as monthly_rent_total
from {{ ref('slv_leases') }}
group by property_id, currency
