---
# Read by the app's check_intake (Story 4.1). The CDE Excel must have these columns (case-insensitive; `a|b` accepts
# either header), and every CDE maps to exactly one input column by the matching rule:
#   exact | case_insensitive | normalized (lower case, non-alphanumerics -> _). `file_column` restricts a CDE to
#   one input file when the CDE Excel names it.
cde_list:
  required_columns: [file, column, definition|description, sensitivity]
  file_column: file
  column_column: column
matching: normalized
---
# Intake — {source name} ({JIRA-KEY})

| Item | Value |
| --- | --- |
| Application / system | |
| Application owner | |
| Data files attached (name, rows, refresh cadence; CSV, TSV or Excel, UTF-8, not password-protected) | |
| CDE list attached (Excel: file, column, definition, sensitivity, mandatory) | |
| Business data owner / data steward (Git provider usernames) | |
| Consumers and use | |
