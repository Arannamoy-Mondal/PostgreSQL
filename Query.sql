-- Select Hash algo name which energy efficiency is HIGH
SELECT name FROM HASH_ALGO_NAME WHERE energy_efficiency='HIGH';
SELECT name FROM hash_algo_name WHERE energy_efficiency='High'; -- No Output due to lowercase

-- Select Hash algo name which energy efficiency is not HIGH
SELECT name FROM hash_algo_name WHERE energy_efficiency<>'HIGH';

DELETE FROM hash_algo_name WHERE name='SCRYPT';

SELECT * FROM crypto WHERE hash_algo_name='SCRYPT';

