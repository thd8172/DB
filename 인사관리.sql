show user;

select *
FROM employees;

SELECT employee_id, first_name, salary
FROM employees;

DESC employees;

SELECT DISTINCT department_id AS 부서코드
FROM employees;

SELECT employee_id,first_name,salary,salary * 12 AS 연봉
FROM employees;

SELECT first_name, salary,salary * 12 + commission_pct, commission_pct
FROM employees;

SELECT last_name|| '' ||first_name as name, hire_date, manager_id
FROM employees;

SELECT DISTINCT manager_id
from employees;

--부서번호가 50인 자료에 사원번호, 이름부서번호 조회
SELECT employee_id,first_name,department_id
FROM employees
WHERE department_id >= 80;

--입사일이 2005년 이후인 사원의 이름과 입사일 출력
SELECT first_name,hire_date
FROM employees
WHERE hire_date < '05-01-01';

--susan 사원의 사변, 성 , 입사일 ,직무,급여 , 부서번호조회
SELECT employee_id,last_name,job_id,department_id
FROM employees;


--급여가 1000~15000 사잉인 사원의 이름과 부서번호 조회
SELECT first_name,department_id,salary
FROM employees
WHERE salary BETWEEN 3000 AND 4500;

--부서번호가 10.100,200 사원의 성과 이름 연결 - 이름
SELECT last_name ||''||first_name as name, department_id,job_id
FROM employees
WHERE department_id IN(10,100,200);

--이름이 A로 시작하는 사원의 이름 조회
SELECT first_name
from employees
WHERE first_name LIKE'%a%';

--이름에 두번째 글짜가 a인 사원의 이름과 입사일 조회
SELECT first_name,hire_Date
from employees
WHERE first_name LIKE '_a%';

--직무가 IT로 시작하는 사원의 이름과 연봉조회
SELECT first_name,job_id,salary *12 AS 연봉
from employees
WHERE job_id Like 'IT%';

--추가 수당이 null인 사원의 이름과 추가수당 출력
SELECT first_name,commission_pct
FROM employees
WHERE commission_pct is not null;

--50번 부서중에 급여가 2000보다 작은 사원의 이름과 부서번호,급여 조회
 SELECT  department_id, last_name, salary
 FROM employees
 WHERE salary < 3000
 AND department_id  = 50;
 
 --100번 부서중에 급여가 4000이상인 사원의 사원번호 부서번호 입력
  SELECT  department_id, last_name, salary
 FROM employees
 WHERE salary < 4000
 AND department_id  = 100;
 
select *
FROM employees;
 
 --급여가 3000에서 4500사이가 아닌 사원의 사원번호, 직무 급여조회
 SELECT salary,employee_id
 FROM employees
 WHERE salary NOT BETWEEN 3000 AND 4500;
 --부서번호가 50,80,90,100이 아닌 사원의 이름 부서 번호 조회
 SELECT first_name,phone_number,employee_id
 FROM employees
 WHERE employee_id NOT IN('50','80','90','100');
 --이름에 a가 포함되지 않은 사원의 이름과 입사일자 조회
 
 --추가수당이 있고 입사일자가 2005년 이후인 사원의 이름과 입사일자, 추가 수당 조회
 
 --부서별 오름차순으로 정렬, 모든필드 열이름 조회
SELECT department_id,first_name,salary
 from employees
 where department_id > 80
 ORDER BY 3,3 ;
 
 --연봉이 높은사람부터 출력 사원번호 , 부서번호 ,연봉
 SELECT employee_id,department_id,salary*12 as "연 봉"
 from employees
 ORDER BY "연 봉" DESC;