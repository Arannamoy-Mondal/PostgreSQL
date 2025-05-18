-- Show Time Zone
SHOW TIME ZONE ;

-- Show Timestamp
SELECT NOW();

-- Current Date
SELECT CURRENT_DATE;
SELECT now()::date;
SELECT now()::time;
--
CREATE table Timezone(
    timez timestamp with time zone,
    time timestamp without time zone
);

SELECT to_char(now(),'yyyy-mm-dd');
SELECT to_char(now(),'mm-dd-yyyy');
SELECT to_char(now(),'hh:mm:ss-dd-mm-yyyy');
SELECT to_char(now(),'DDD');

SELECT to_char(CURRENT_DATE-INTERVAL '1YEAR 2MONTH','YYYY-MM-DD');

SELECT age(CURRENT_DATE,'2002-08-13');

SELECT extract(day from '2002-08-13'::date);

SELECT 1::bool;