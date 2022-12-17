-- TIMESTAMP WITH TIME ZONE
-- TIMESTAMP +9:00
-- TIMESTAMP Asia/Seoul

SELECT systimestamp(0)     --  TIMESTAMP WITH TIME ZONE
FROM dual;

-- AT TIME ZONE Clause : A WAY TO CHANGE THE TIME ZONE
-- https://database.guide/4-ways-to-change-the-time-zone-in-oracle/


SELECT systimestamp(0) AT TIME ZONE 'UTC' FROM dual;
SELECT systimestamp(0) AT TIME ZONE 'Asia/Seoul' FROM dual;

SELECT to_char(systimestamp(0) AT TIME ZONE 'Asia/Seoul',
               'yy/MM/dd HH24:MI:SS (TZR)')
FROM dual;

SELECT to_char(TIMESTAMP '2017-08-08 2:00:00 Asia/Seoul',
               'yy/MM/dd HH24:MI:SS (TZR)')
FROM dual;

SELECT to_char(TIMESTAMP '2017-08-08 2:00:00 Asia/Seoul' AT TIME ZONE 'Asia/Seoul',
               'yy/MM/dd HH24:MI:SS (TZR)')
FROM dual;

SELECT to_char(TIMESTAMP '2017-08-08 2:00:00 Asia/Seoul' AT TIME ZONE '+9:00',
               'yy/MM/dd HH24:MI:SS (TZR)')
FROM dual;

SELECT to_char(TIMESTAMP '2017-08-08 2:00:00 +9:00' AT TIME ZONE 'Asia/Seoul',
               'yy/MM/dd HH24:MI:SS (TZR)')
FROM dual;

SELECT to_char(TIMESTAMP '2017-08-08 2:00:00 +9:00' AT TIME ZONE '+9:00',
               'yy/MM/dd HH24:MI:SS (TZR)')
FROM dual;

