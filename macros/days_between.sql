{#- Days between two dates. Warehouse-specific SQL lives only in adapter.dispatch macros (onboarding rule PORT-01). -#}
{% macro days_between(start_col, end_col) -%}
    {{ return(adapter.dispatch('days_between', 'property_ops')(start_col, end_col)) }}
{%- endmacro %}

{% macro default__days_between(start_col, end_col) -%}
    datediff('day', {{ start_col }}, {{ end_col }})
{%- endmacro %}

{% macro duckdb__days_between(start_col, end_col) -%}
    date_diff('day', {{ start_col }}, {{ end_col }})
{%- endmacro %}
