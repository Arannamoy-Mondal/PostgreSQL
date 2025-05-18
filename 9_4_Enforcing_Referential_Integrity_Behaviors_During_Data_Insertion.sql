-- Data insert not possible when foreign key not exist as a primary key. Insertion constraint:
-- 1. Attempting to insert a data with a foreign key that does not exist
-- 2. Inserting a data with a valid foreign key
-- 3. Attempting to insert a data without specifying a foreign key

/*
Deletion constraint:
1. Casacading deletion -> ON DELETE CASACADE
2. Setting Null -> ON DELETE SET NULL
3.Restrict deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (BY DEFAULT DEWA THAKE)
4. Set Default value -> ON DELETE SET DEFAULT
*/