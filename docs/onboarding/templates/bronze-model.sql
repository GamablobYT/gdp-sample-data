-- brz_<table>: typed copy of raw.<table> per its column contract. One cast per column, nothing else.
select
    cast(<column> as <type>) as <column>
from {{ source('raw', '<table>') }}
