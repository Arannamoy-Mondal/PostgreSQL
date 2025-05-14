-- Copyright 2025 Arannamoy Mondal
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
CREATE TABLE PERSON (
  ID SERIAL NOT NULL,
  USER_NAME VARCHAR(255),
  AGE INT,
  CONSTRAINT PERSON_AGE CHECK ( AGE>18 ),
  CONSTRAINT PERSON_PK_RULE PRIMARY KEY (ID)
);