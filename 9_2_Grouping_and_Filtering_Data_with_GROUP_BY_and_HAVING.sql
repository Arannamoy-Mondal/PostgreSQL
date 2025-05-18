SELECT * FROM crypto;

-- Group By: Must use aggregate function when using group by. Because aggregate function return single value for each column.
-- Aggregate function working policy: Split, Apply and Combine




-- Group By With Having: Having work on every agrregate data. It works as condition on group data.
SELECT consensus_algorithm_type,count(consensus_algorithm_type) FROM crypto group by
consensus_algorithm_type having consensus_algorithm_type ilike '%PoS%' order by count(consensus_algorithm_type) desc;


-- count each year how many coin found
select initial_release_year,count(symbol) from crypto group by initial_release_year;


