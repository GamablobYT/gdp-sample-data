# Intake profile: property_ops tenant register, rent payments, property list (KAN-5)

Statistics only; no values. Files landed as all-text tables in `raw` (`raw.tenants` 20 rows, `raw.rent_payments` 45, `raw.properties` 12). Classes come from the CDE Excel sensitivity column; "unclassified" means the CDE list does not mention the column (CDO-03).

## tenants.csv (20 rows) -> raw.tenants

| column | inferred type | nulls | distinct | length | CDE | class |
|---|---|---|---|---|---|---|
| tenant_id | integer | 0 | 20 | 1-2 | Y | Internal |
| tenant_name | varchar | 0 | 20 | 15-21 | Y | Confidential |
| contact_email | varchar | 0 | 20 | 27-33 | Y | Restricted |
| phone | varchar | 0 | 20 | 15-15 | Y | Restricted |
| country | varchar | 0 | 5 | 2-2 | N | Public |
| onboarded_on | date | 0 | 20 | 10-10 | not listed | unclassified |
| segment | varchar | 2 | 3 | 6-9 | not listed | unclassified |

## rent_payments.csv (45 rows) -> raw.rent_payments

| column | inferred type | nulls | distinct | length | CDE | class |
|---|---|---|---|---|---|---|
| payment_id | integer | 0 | 45 | 4-4 | Y | Internal |
| lease_id | integer | 0 | 15 | 1-2 | not listed | unclassified |
| tenant_id | integer | 0 | 15 | 1-2 | not listed here (CDE in tenants.csv) | unclassified |
| paid_on | date | 0 | 39 | 10-10 | not listed | unclassified |
| amount | varchar | 0 | 45 | 6-12 | Y | Confidential |
| currency | varchar | 0 | 2 | 3-3 | not listed | unclassified |
| method | varchar | 0 | 3 | 4-13 | N | Internal |

## properties.xlsx (12 rows) -> raw.properties

| column | inferred type | nulls | distinct | length | CDE | class |
|---|---|---|---|---|---|---|
| property_id | varchar | 0 | 12 | 5-5 | Y | Public |
| property_name | varchar | 0 | 12 | 15-22 | N | Public |
| city | varchar | 0 | 8 | 4-10 | not listed | unclassified |
| country | varchar | 0 | 6 | 2-2 | not listed | unclassified |
| sqft | integer | 0 | 12 | 5-5 | N | Internal |
| built_year | integer | 0 | 11 | 4-4 | not listed | unclassified |

## CDE columns missing from the data

None: all 11 CDE rows match a column in their file. The CDE list has no rows for `lease_id`, `paid_on`, `currency` or `tenant_id` in rent_payments.

## Findings

1. **No property link for payments (blocks the gold grain).** `rent_payments` carries `lease_id` and `tenant_id` but no `property_id`, and no lease file was attached. The dashboard needs collected rent per property and month, and AC-2 depends on it. Not derivable from the three data files.
2. **`amount` is text, not numeric.** The profiler infers varchar with lengths 6-12, so some values are probably formatted (symbols, separators or a decimal comma). AC-1 needs a decimal(12,2). The format needs a decision, and unparseable rows will need handling.
3. **Two currencies** in payments. AC-2 requires sums per currency; no conversion is implied.
4. **Confidential/Restricted columns (CDO-03):** `tenant_name`, `contact_email`, `phone`, `amount`. The consumer does not need names, e-mails or phones, so drop them in silver. `amount` is Confidential and is the core measure of the gold model. Under CDO-03 and AC-3 it can only appear in gold if the spec names the consumer (Finance arrears dashboard) and the data owner approves it. That is a conflict between AC-3 and the dashboard's need, and it needs the owner's decision.
5. **Keys (AC-4, DQ-01):** `tenant_id` and `payment_id` are fully populated and unique in these files. `lease_id` repeats, which is expected.
6. **`segment`** has 2 nulls and is not in the CDE list. Not needed by the dashboard.
7. **Tenant/payment referential integrity** and the date range (Jan-Mar 2026 expected) have not been checked. They are for the build tests.
8. **Owner and steward** in the request are still template placeholders (`@<your-github-username>`). CL-07 needs real names.
9. **Retention:** 7 years of payment history is stated. No purge mechanism is in scope yet; the spec should record it.

## Open questions for the application owner

- How does a payment map to a property (lease file, or a `property_id` column)?
- What is the format of `amount`, and which currencies are expected?
- May the Confidential `amount` appear in gold for the Finance arrears dashboard (AC-3 vs the dashboard need)?
- Who are the data owner and data steward (GitHub handles)?
- Does "arrears" need expected rent (lease terms)? Only collected rent was listed.
