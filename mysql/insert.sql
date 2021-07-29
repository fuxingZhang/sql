INSERT INTO config (
    key,
    value,
    created_at
) SELECT
    'is_open_rule',
    'true',
    '2021-07-29 13:10:00'
FROM
    DUAL
WHERE NOT EXISTS (
    SELECT *FROM config WHERE key = 'is_open_rule'
);
