-- In:
-- Select crypto which hash_algo_name 'SHA-256','SCRYPT','RANDOMX'
select name from crypto where hash_algo_name in ('SHA-256','SCRYPT','RANDOMX') or symbol in ('BTC');

-- Not In:
select name from crypto where hash_algo_name not in ('SHA-256','SCRYPT','RANDOMX');

-- Between
-- select crypto which are founded between 2018 to 2021
select name from crypto where initial_release_year between '2018' and '2021';

-- Like:
-- select crypto which are used staking consensus algo.
select crypto.name from crypto where consensus_algorithm_type like '%S';
select crypto.name from crypto where consensus_algorithm_type like '%s'; -- it gives no output because like is case sensitive

-- Underscore(_):
-- select crypto which name has 't' after one character
select name from crypto where name like '_T%' or name like '%R_'; -- underscore is also case sensitive

-- ILIKE: same as like but case insensitive
select name from crypto where name ilike '%o_';
