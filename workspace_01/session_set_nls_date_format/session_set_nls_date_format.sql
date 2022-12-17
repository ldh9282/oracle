-- 유저 접속이 끊기면 세션으로 설정된 nls_date_format 초기화됨

ALTER SESSION SET nls_date_format = 'YYYY/MM/DD HH12:MI:SS AM DAY';