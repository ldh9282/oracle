(order by)정렬, (group by)그룹화 모두 코스트가 높음
같이 사용하지 않을 것을 권장함

문법 순서상
group by 뒤에 order by 가 오더라도
order by를 where절 이후에 먼저 처리하기 때문에
두 개 같이 사용하면 cost가 매우 높음.