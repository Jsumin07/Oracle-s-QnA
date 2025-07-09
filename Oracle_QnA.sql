-- 1. 1981년 입사한 세일즈맨 월급 내림차순__이름, 부서번호, 입사일, 급여
SELECT ename, job, TO_CHAR(hiredate,'YYYY/MM/DD'),sal FROM emp WHERE TO_CHAR(hiredate,'YYYY') LIKE '1981'AND job='SALESMAN' ORDER BY sal asc;

-- 2. 입사월이 12월 사람들의 이름,사원번호,입사일을 출력
SELECT ename, deptno, TO_CHAR(hiredate,'YYYY/MM/DD') FROM emp;
SELECT ename, deptno, TO_CHAR(hiredate,'YYYY/MM/DD') FROM emp WHERE TO_CHAR(hiredate,'MM') LIKE '12';

-- 3. comm이 NULL과 0인 사람들 중에 월급이 가장 적은 사람
SELECT ename, sal,comm FROM emp WHERE (comm IS NOT NULL OR comm=0) AND sal=1500;

-- 4. 평균급여보다 연봉이 높은 사람들 출력 __이름, 부서, 월급
SELECT ename, deptno,sal FROM emp WHERE deptno=20 AND sal > (SELECT avg(sal)FROM emp);
