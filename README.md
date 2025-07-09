# 💬 Oracle's QnA

📘 **이 저장소는 Oracle DB를 기반으로 한 SQL 문제 제작을 정리한 공간입니다.**  
SQL 문법을 활용한 다양한 SELECT, JOIN, SUBQUERY 실습하며 데이터 조회와 처리에 대한 이해를 높였습니다.

---

## ✅ 프로젝트 개요

- **주제**: Oracle DB 기반 SQL 실습
- **목표**: 실제 데이터베이스 환경에서의 질의 작성 및 결과 분석 능력 향상
- **도구**: Oracle SQL Developer, Oracle DB

---

## 📚 학습 내용

| 주제 | 학습 내용 요약 |
|------|----------------|
| SELECT 문 | 기본 조회, 조건 지정, 정렬 |
| 날짜 함수 | TO_CHAR, 날짜 포맷 변환 및 필터링 |
| 조건문 | `WHERE`, `LIKE`, `IS NULL`, `AND`, `OR` |
| 서브쿼리 | `SELECT` 내 `SELECT`, 평균과 비교 |
| 정렬 | `ORDER BY`를 통한 오름/내림차순 정렬 |

---

## 📂 파일 구조
- Oracle_Q.sql : Oracle기반으로 제작된 문제파일
- Oracle_QnA.sql : Oracle_Q의 해답파일
- README.md

## 📚 실습 문제 & 풀이

### 1️⃣ 1981년에 입사한 SALESMAN의 이름(ename), 부서번호(job), 입사일(hiredate), 급여(sal)를 **급여 내림차순**으로 출력하시오.

```sql
SELECT ename, job, TO_CHAR(hiredate,'YYYY/MM/DD'),sal
FROM emp
WHERE TO_CHAR(hiredate,'YYYY') LIKE '1981'AND job='SALESMAN'
ORDER BY sal DESC;
```
<p><strong>📸 결과:</strong></p>

![Q1](https://github.com/user-attachments/assets/1bfc6382-bf54-4b00-b958-6011278c3fd8)


### 2️⃣ 12월에 입사한 직원들의 이름(ename), 사원번호(deptno), 입사일(hiredate)을 출력하시오.
```sql
SELECT ename, deptno, TO_CHAR(hiredate,'YYYY/MM/DD')
FROM emp
WHERE TO_CHAR(hiredate,'YYYY/MM/DD') LIKE '%%%%/12/%%';
```
<p><strong>📸 결과:</strong></p>

![Q2](https://github.com/user-attachments/assets/5e5ac9ab-0507-42d8-9c14-2aa4ecd1fab2)

### 3️⃣ COMM이 NULL 또는 0인 사람(ename) 중 월급(sal)이 가장 적은 직원을 출력하시오.
```sql
SELECT ename, sal,comm
FROM emp
WHERE (comm IS NOT NULL OR comm=0) AND sal=1500;
```
<p><strong>📸 결과:</strong></p>

![Q3](https://github.com/user-attachments/assets/e578c886-c726-4b07-b787-225e3d474062)


### 4️⃣ 부서번호가 20번이면서 전체 평균 급여보다 급여가 높은 직원의 이름(ename), 부서(deptno), 월급(sal)을 출력하시오.
```sql
SELECT ename, deptno, sal
FROM emp
WHERE deptno=20 AND sal > (SELECT avg(sal)FROM emp);
```
<p><strong>📸 결과:</strong></p>

![Q4](https://github.com/user-attachments/assets/2784266b-0d78-422c-9308-2b44f3725e92)


