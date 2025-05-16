-- Limit:
select name from crypto limit 10;

--offset:
select crypto.name from crypto limit 10 offset 2;

-- delete
delete from crypto;
delete from hash_algo_name;
delete from consensus_algorithm_type;
delete from crypto where consensus_algorithm_type ilike '%pow%'



