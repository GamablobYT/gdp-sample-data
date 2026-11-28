-- Gold share of a data product — snowflake/shares/<product>.sql (CDO-07).
-- SELECT on the product's Gold models only. Applied by CBRE's release process with its own role; a build never
-- creates a share. {{database}} and {{schema}} are the release target's Gold database and schema.
CREATE SHARE IF NOT EXISTS <PRODUCT>_SHARE;
GRANT USAGE ON DATABASE {{database}} TO SHARE <PRODUCT>_SHARE;
GRANT USAGE ON SCHEMA {{database}}.{{schema}} TO SHARE <PRODUCT>_SHARE;
GRANT SELECT ON TABLE {{database}}.{{schema}}.<GOLD_MODEL> TO SHARE <PRODUCT>_SHARE;
