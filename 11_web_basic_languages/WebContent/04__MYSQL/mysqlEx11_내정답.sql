# 2021/06/03 16:28 ~ 16:44

# 문제 1) D005 부서의 전체 사원들의 수 조회하기.
SELECT
        DEPT_NO,
        COUNT(*)
FROM
		DEPT_EMP
GROUP BY
		DEPT_NO
HAVING
		DEPT_NO = 'D005';

# 문제 2) 전체 남자 사원의 수를 조회하기.
SELECT
		GENDER,
		COUNT(*)
FROM
		employees
GROUP BY
		GENDER
HAVING
		GENDER = 'M';

# 문제 3) 각 부서별 매니저의 수를 조회하기.
SELECT
		DEPT_NO,
		COUNT(*)
FROM
		dept_manager
GROUP BY
		DEPT_NO;

# 문제 4) 각 부서별 매니저의 수를 조회하기. ( 단 매니저가 3명 이상인 경우만 ) 
SELECT
		DEPT_NO,
		COUNT(*)
FROM
		DEPT_MANAGER
GROUP BY
		DEPT_NO
HAVING
		COUNT(*) >= 3;

# 문제 5) 생일이 1월 1일인 사원의 수를 조회하기. ( substring함수 사용 )
SELECT 
		BIRTH_DATE , 
		COUNT(*) 
FROM 
		EMPLOYEES
GROUP BY 
		BIRTH_DATE
HAVING
		SUBSTRING(BIRTH_DATE , 6) = '01-01';