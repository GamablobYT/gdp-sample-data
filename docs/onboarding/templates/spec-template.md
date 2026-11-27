# SPEC — {source name} ({JIRA-KEY})

## Purpose
What the data is for and who consumes it.

## Owner and steward
- Data owner: @github-handle
- Data steward: @github-handle

## Inputs
| File | Landing table | Rows (intake) | Contract |
| --- | --- | --- | --- |
| tenants.csv | raw.tenants | 20 | contracts/tenants.yml |

## Models
| Layer | Model | Reads | Notes |
| --- | --- | --- | --- |
| bronze | brz_tenants | raw.tenants | casts per contract |

## Sensitive columns
| File | Column | Class (CDE list) | Handling |
| --- | --- | --- | --- |

## Data quality checks
- dbt tests per model; a Soda contract per silver model.

## Open questions
