{{ config(enabled=var('ad_reporting__google_ads_enabled', True)) }}

{{
    fivetran_utils.union_data(
        table_identifier='advertised_product_report', 
        database_variable='amazon_ads_database', 
        schema_variable='amazon_ads_schema', 
        default_database=target.database,
        default_schema='amazon_ads',
        default_variable='advertised_product_report_source',
        union_schema_variable='amazon_ads_union_schemas',
        union_database_variable='amazon_ads_union_databases'
    )
}}