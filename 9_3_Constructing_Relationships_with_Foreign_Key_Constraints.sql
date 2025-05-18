-- Retrieve all currecy with consensus algorithm is PoS

select * from crypto where consensus_algorithm_type ilike 'PoS';
