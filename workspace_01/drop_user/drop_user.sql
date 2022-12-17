-- 사용하면 안됨.
-- SYSTEM, SYS가 아니면 권한이 불충분함
-- 계정접속이 되어 있으면 실행안됨
-- 계정 소유의 테이블이 없을 때만 계정 삭제됨
DROP USER sampleuser;

-- 계정 소유의 모든 테이블도 함께 같이 삭제함 
DROP USER sampleuser CASCADE;