-- Silver: cleaned leases with lease length; warehouse-specific SQL only via adapter.dispatch macros.
select
    lease_id,
    upper(trim(property_id))                                as property_id,
    trim(tenant_name)                                       as tenant_name,
    start_date,
    end_date,
    {{ property_ops.days_between('start_date', 'end_date') }} as lease_days,
    monthly_rent,
    upper(currency)                                         as currency,
    case when end_date is null then true else false end     as is_open_ended
from {{ ref('brz_leases') }}
