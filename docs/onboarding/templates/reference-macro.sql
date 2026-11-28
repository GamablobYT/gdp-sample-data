{#- Reference data (CDO-10): macros/gdp_reference.sql in the data repository. The synthetic seed under
    seeds/reference/ on DuckDB and in CI; CBRE's reference schema (dbt source `reference`) on Snowflake. Replace
    property_ops with the dbt project name. The source is declared once:

    sources:
      - name: reference
        database: "{{ var('gdp_reference_database', target.database) }}"
        schema: "{{ var('gdp_reference_schema', target.schema) }}"
        tables: [{name: property_crosswalk}, {name: dim_property}]

    Seeds: seeds/reference/<table>.csv with made-up keys and IDs, described as SYNTHETIC in seeds/reference/_reference.yml
    and tagged [reference, synthetic] in dbt_project.yml. -#}
{% macro gdp_reference(name) -%}
    {{ return(adapter.dispatch('gdp_reference', 'property_ops')(name)) }}
{%- endmacro %}

{% macro default__gdp_reference(name) -%}
    {{ return(ref(name)) }}
{%- endmacro %}

{% macro snowflake__gdp_reference(name) -%}
    {{ return(source('reference', name)) }}
{%- endmacro %}
