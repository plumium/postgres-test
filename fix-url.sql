-- Active: 1704118307969@@172.28.233.193@5432@test

begin;

SELECT * from items;

with fixed_urls as (
        SELECT
            id,
            regexp_replace(
                url,
                '/\d{4}/',
                '/' || CAST(year as CHARACTER(4)) || '/'
            ) as fixed_url
        FROM items
    )
UPDATE items
set url = fixed_url
from fixed_urls
where items.id = fixed_urls.id;

SELECT * from items;

ROLLBACK;