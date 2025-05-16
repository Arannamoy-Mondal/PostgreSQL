-- That crypto whose total supply is infinity or null.
select crypto.name from crypto where total_supply is null;

-- That crypto whose total supply is not null
select crypto.name from crypto where total_supply is not null;

-- Add any digi twith null
select (5+null); -- Any arithmatic operation with null return null
select (5*null);
select (5/null);

-- Coalesce function:
-- If any currency has null amount supply then show it as infinity using coalesce
select name,coalesce(cast(total_supply as varchar),'Infinity') from crypto where total_supply is null or total_supply=21000000;