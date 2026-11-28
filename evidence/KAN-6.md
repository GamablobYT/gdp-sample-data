# Evidence pack · KAN-6

Make GamablobYT/gdp-sample-data ready for source onboarding

- Repository: GamablobYT/gdp-sample-data
- Pull request: #1 https://github.com/GamablobYT/gdp-sample-data/pull/1
- Proves head: `422e284e54fdea340b786d234e0c2a180739f8bd` (records up to event 664)
- Ticket chat: http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d
- Warehouse: DuckDB · schema gdp_kan_6

## Acceptance criteria (0)

Not applicable for a repository onboarding ticket

## Quality checks (17)

| Check | Tool | Status | Severity | Model | Column | DQ rule | AC |  |
|---|---|---|---|---|---|---|---|---|
| brz_leases | dbt_build | pass |  |  |  |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| source_not_null_raw_leases_currency | dbt_build | pass | fail |  | currency |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| source_not_null_raw_leases_lease_id | dbt_build | pass | fail |  | lease_id |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| source_not_null_raw_leases_monthly_rent | dbt_build | pass | fail |  | monthly_rent |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| source_not_null_raw_leases_property_id | dbt_build | pass | fail |  | property_id |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| source_not_null_raw_leases_start_date | dbt_build | pass | fail |  | start_date |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| slv_leases | dbt_build | pass |  |  |  |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| not_null_brz_leases_lease_id | dbt_build | pass | warn | brz_leases | lease_id |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| not_null_brz_leases_monthly_rent | dbt_build | pass | warn | brz_leases | monthly_rent |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| unique_brz_leases_lease_id | dbt_build | pass | warn | brz_leases | lease_id |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| gld_rent_roll | dbt_build | pass |  |  |  |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| accepted_values_slv_leases_currency__GBP__EUR__USD | dbt_build | pass | fail | slv_leases | currency |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| not_null_slv_leases_lease_id | dbt_build | pass | fail | slv_leases | lease_id |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| not_null_slv_leases_property_id | dbt_build | pass | fail | slv_leases | property_id |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| unique_slv_leases_lease_id | dbt_build | pass | fail | slv_leases | lease_id |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| not_null_gld_rent_roll_monthly_rent_total | dbt_build | pass | fail | gld_rent_roll | monthly_rent_total |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |
| not_null_gld_rent_roll_property_id | dbt_build | pass | fail | gld_rent_roll | property_id |  |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=330) |

## Completeness check (5)

| Check | Title | Result | Reason |
|---|---|---|---|
| 3 | Existing dbt project found | pass |  |
| 4 | AGENTS.md has the managed block | pass |  |
| 5 | Onboarding knowledge exists | pass |  |
| 6 | BMad config present | pass |  |
| 7 | CI workflow runs the dbt build and tests | pass |  |

## Run records (3)

CI ran against DuckDB (local deployment).

| Step | Model | Warehouse | Rows | Seconds | Credits |  |
|---|---|---|---|---|---|---|
| amelia | brz_leases | duckdb |  | 0.012 | Not applicable on DuckDB | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=327) |
| amelia | slv_leases | duckdb |  | 0.007 | Not applicable on DuckDB | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=328) |
| amelia | gld_rent_roll | duckdb |  | 0.009 | Not applicable on DuckDB | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=329) |

## Approvals (4)

| Record | Who | When | Subject | Version | Policy |  |
|---|---|---|---|---|---|---|
| Approval | @GamablobYT | 2026-11-28T05:50:50.387000+00:00 | Mary · gdp-knowledge-derivation | 5bbb449ff4b7e66fed921e636b1f53d69ceb41e8 | approval_policy v7 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=171) |
| Approval | @GamablobYT | 2026-11-28T05:54:35.520000+00:00 | Winston · gdp-knowledge-check | e69185b4a84ca7e6479e7de67a70ce8c561a46b5 | approval_policy v7 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=273) |
| Approval | @GamablobYT | 2026-11-28T05:57:24.237000+00:00 | Amelia · gdp-config-and-ci | 422e284e54fdea340b786d234e0c2a180739f8bd | approval_policy v7 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=359) |
| Approval | @GamablobYT | 2026-11-28T16:20:45.426000+00:00 | Code-review crew · bmad-code-review | 422e284e54fdea340b786d234e0c2a180739f8bd | approval_policy v7 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=624) |

## Review (18)

Review of `422e284`: Review of gdp/KAN-6 at 422e284 (no spec; no-spec mode). Checklist keeps all 19 baseline items, templates match the baseline, and rule source paths exist. Main problems: the gdp-dbt-ci.yml scope gate and Snowflake path, a duplicate build alongside dbt-ci.yml, and several rule claims that do not match the code (DQ-01, DQ-02, SENS-01). Nothing was changed. I could not find the cause of the earlier failed gdp-config-and-ci step in the repo; the likeliest candidates are the CRLF-only working-tree changes or the added second workflow. These were not confirmed.

| Finding | Reviewer | Severity | File | Accepted by | When |  |
|---|---|---|---|---|---|---|
| Scope gate misses modified/renamed models and is loosely matched | Edge Case Hunter | high | .github/workflows/gdp-dbt-ci.yml:37 | @GamablobYT | 2026-11-28T16:20:45.534000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=634) |
| Snowflake path cannot authenticate and loads no fixtures | Blind Hunter | high | .github/workflows/gdp-dbt-ci.yml:68 | @GamablobYT | 2026-11-28T16:20:45.542000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=635) |
| Overlaps dbt-ci.yml: duplicate builds, little added value, no lint | Acceptance Auditor | medium | .github/workflows/gdp-dbt-ci.yml:21 | @GamablobYT | 2026-11-28T16:20:45.558000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=636) |
| Python 3.14 with pinned dbt/duckdb versions is unverified | Blind Hunter | medium | .github/workflows/gdp-dbt-ci.yml:47 | @GamablobYT | 2026-11-28T16:20:45.564000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=637) |
| Script injection surface and masked git failure in scope step | Blind Hunter | low | .github/workflows/gdp-dbt-ci.yml:43 | @GamablobYT | 2026-11-28T16:20:45.464000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=625) |
| Fixtures path ignores DBT_PROJECT_DIR; warehouse var handling inconsistent; deps errors masked | Edge Case Hunter | low | .github/workflows/gdp-dbt-ci.yml:96 | @GamablobYT | 2026-11-28T16:20:45.471000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=626) |
| DQ-02 'bronze source checks warn' does not match the repo | Acceptance Auditor | medium | docs/onboarding/rules/quality-dq-platform.md:12 | @GamablobYT | 2026-11-28T16:20:45.571000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=638) |
| DQ-01 overstates gold and silver tests; weakens composite-grain coverage | Acceptance Auditor | medium | docs/onboarding/rules/quality.md:13 | @GamablobYT | 2026-11-28T16:20:45.577000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=639) |
| SENS-01 omits the CDO-17 contacts check and weakens BL-05/BL-16 | Acceptance Auditor | medium | docs/onboarding/rules/sensitive-data.md:19 | @GamablobYT | 2026-11-28T16:20:45.583000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=640) |
| GOV-01 and spec template disagree on '@tbc' | Blind Hunter | low | docs/onboarding/rules/governance-owner-steward.md:9 | @GamablobYT | 2026-11-28T16:20:45.478000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=627) |
| DQ-01/DQ-02 ids in templates collide with the DQ rule files | Blind Hunter | low | docs/onboarding/templates/quality-check.yml:1 | @GamablobYT | 2026-11-28T16:20:45.485000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=628) |
| Link-rate check on enterprise ID column is unconditional | Blind Hunter | low | docs/onboarding/templates/quality-check-silver.yml:1 | @GamablobYT | 2026-11-28T16:20:45.492000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=629) |
| NAME-01 omits baseline UPPER_SNAKE_CASE for Snowflake objects | Acceptance Auditor | low | docs/onboarding/rules/naming.md:15 | @GamablobYT | 2026-11-28T16:20:45.503000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=630) |
| CL-04 has no baseline_id; header says every item is a baseline item | Acceptance Auditor | low | docs/onboarding/checklist.yml:87 | @GamablobYT | 2026-11-28T16:20:45.511000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=631) |
| README describes dbt-ci.yml as a copy of the v1 template and omits gdp-dbt-ci.yml | Acceptance Auditor | low | README.md:12 | @GamablobYT | 2026-11-28T16:20:45.519000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=632) |
| Model comment calls the leases-source example 'the contract' | Acceptance Auditor | low | models/bronze/brz_leases.sql:1 | @GamablobYT | 2026-11-28T16:20:45.526000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=633) |
| Working tree has uncommitted CRLF-only changes on about 19 files | Acceptance Auditor | info | .gitignore:1 | @GamablobYT | 2026-11-28T16:20:45.589000+00:00 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=641) |

## Hand-offs and interruptions (4)

| When | Chosen by | Sent by | From → to | Reason |  |
|---|---|---|---|---|---|
| 2026-11-28T05:51:23.194000+00:00 | Mary | @GamablobYT | Mary → Winston · gdp-knowledge-check | Derivation is approved; the next onboarding step is an independent check of the derived knowledge against its sources and the baseline, before the config and CI step. | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=192) |
| 2026-11-28T05:55:06.687000+00:00 | Winston | @GamablobYT | Winston → Amelia · gdp-config-and-ci | Knowledge is approved; the remaining repository-onboarding step is the BMad config and CI workflow. | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=295) |
| 2026-11-28T06:11:26.620000+00:00 | @GamablobYT | @GamablobYT | Amelia → Amelia · gdp-config-and-ci | Config and CI are the approved remaining work for KAN-6, so Amelia verifies them against the rules before the ticket moves on. | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=385) |
| 2026-11-28T06:48:36.192000+00:00 | @GamablobYT | @GamablobYT | Amelia → Code-review crew · bmad-code-review | The person explicitly asked to run the code review, which matches the Code-review crew's review of the repository onboarding change. | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=433) |

## Cost (9)

| Step | Skill | Model | Input tokens | Output tokens | USD |  |
|---|---|---|---|---|---|---|
| mary | gdp-knowledge-derivation | claude-sonnet-5-5 | 61 | 23268 | 1.1016 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=79) |
| winston | gdp-knowledge-check | claude-sonnet-5-5 | 42 | 10867 | 0.4839 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=268) |
| amelia | gdp-config-and-ci | claude-sonnet-5-5 | 34 | 10171 | 0.3756 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=354) |
| amelia | gdp-config-and-ci | claude-sonnet-5-5 | 14 | 1314 | 0.1331 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=410) |
| code-review-crew | bmad-code-review | claude-sonnet-5-5 | 40 | 12860 | 1.4164 | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=492) |
| Router | 01a220c7-1218-721d-a42c-a04a2a50936f | claude-sonnet-5-5 | 765 | 522 |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=383) |
| Router | 01a220db-ffa2-70c9-a325-94756b21675a | claude-sonnet-5-5 | 1152 | 52 |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=426) |
| Router | 01a220e9-b034-74fc-ae38-4d00843e102c | claude-sonnet-5-5 | 1179 | 264 |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=431) |
| Router | 01a22304-ae7f-71c9-bf08-8e29878d3ac1 | claude-sonnet-5-5 | 1464 | 66 |  | [chat](http://localhost:3000/tickets/01a2209a-5ded-72ce-a363-edef5658833d?event=664) |

Total: 4751 input tokens, 59384 output tokens, USD 3.5106; warehouse credits: Not applicable on DuckDB.

## Proposed changes (0)

| Connector | Operation | Target | Before | After | Reason | Decision | Result |  |
|---|---|---|---|---|---|---|---|---|
