# SPEC — {source name} ({JIRA-KEY})

The sections below are required (Story 4.2; the app's check_spec reads them). Nothing is invented: contracts come
from the intake check and profile, definitions and classes from the CDE Excel, people and retention from the CDE
Excel or the driver's answers. A person still unknown is written `@tbc`.

## Purpose
What the data is for and who consumes it.

## Data product
- Name: snake_case product name
- Domain: business area (e.g. property)
- Description: one line
- Consumption: snowflake_share

## Owner and steward
- Data owner: @git-username
- Data steward: @git-username

## Retention
- Retention period: by classification (CDO-18)
- Archival:
- Deletion:

## Inputs
One row per input file; each has a column contract in `contracts/<input-stem>.yml` (name, type, nullable).

| File | Landing table | Contract |
| --- | --- | --- |
| tenants.csv | raw.tenants | contracts/tenants.yml |

## Critical data elements
| File | Column | Definition | Class | Mandatory |
| --- | --- | --- | --- | --- |

## Models
Bronze (raw, as received) · Silver (cleansed) · Gold (business-ready), named per the naming rules.

## Enterprise ID links
Only when the source refers to master entities (CDO-10, ARCH-03): link by the current crosswalk, never master.

| Entity | Source key | Crosswalk | Enterprise ID column | Link rate threshold |
| --- | --- | --- | --- | --- |

## Acceptance criteria
Stable IDs, never reused within the ticket; each names the test or check that proves it.

| ID | Criterion | Proved by |
| --- | --- | --- |
| AC-01 | | dbt test / Soda check |

## Data quality checks
At least one Soda check per mandatory CDE (CDO-20); bronze checks warn, silver and gold fail.

## Classification and access
Each CDE with its class; the access rule for Confidential and Restricted data (CDO-17).

## Refusals
None — or one bullet per refusal: the refused part, the rule ID and its file (e.g. ARCH-03,
`docs/onboarding/rules/platform-arch-03.md`) and the compliant alternative a person approved (the app records the
approval; the digest lists each refusal with its decision).

## Open questions
