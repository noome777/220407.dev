-- 정렬하기
SELECT *
FROM EMP
ORDER BY SAL ASD --오름차순 정렬
--ORDER BY SAL DESC --내림차순 정렬
;

SELECT * 
FROM EMP
WHERE SAL >= 1000
ORDER BY SAL ASC, ENAME DESC
;