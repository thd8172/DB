show user;

select *
FROM employees;

SELECT employee_id, first_name, salary
FROM employees;

DESC employees;

SELECT DISTINCT department_id AS �μ��ڵ�
FROM employees;

SELECT employee_id,first_name,salary,salary * 12 AS ����
FROM employees;

SELECT first_name, salary,salary * 12 + commission_pct, commission_pct
FROM employees;

SELECT last_name|| '' ||first_name as name, hire_date, manager_id
FROM employees;

SELECT DISTINCT manager_id
from employees;

--�μ���ȣ�� 50�� �ڷῡ �����ȣ, �̸��μ���ȣ ��ȸ
SELECT employee_id,first_name,department_id
FROM employees
WHERE department_id >= 80;

--�Ի����� 2005�� ������ ����� �̸��� �Ի��� ���
SELECT first_name,hire_date
FROM employees
WHERE hire_date < '05-01-01';

--susan ����� �纯, �� , �Ի��� ,����,�޿� , �μ���ȣ��ȸ
SELECT employee_id,last_name,job_id,department_id
FROM employees;


--�޿��� 1000~15000 ������ ����� �̸��� �μ���ȣ ��ȸ
SELECT first_name,department_id,salary
FROM employees
WHERE salary BETWEEN 3000 AND 4500;

--�μ���ȣ�� 10.100,200 ����� ���� �̸� ���� - �̸�
SELECT last_name ||''||first_name as name, department_id,job_id
FROM employees
WHERE department_id IN(10,100,200);

--�̸��� A�� �����ϴ� ����� �̸� ��ȸ
SELECT first_name
from employees
WHERE first_name LIKE'%a%';

--�̸��� �ι�° ��¥�� a�� ����� �̸��� �Ի��� ��ȸ
SELECT first_name,hire_Date
from employees
WHERE first_name LIKE '_a%';

--������ IT�� �����ϴ� ����� �̸��� ������ȸ
SELECT first_name,job_id,salary *12 AS ����
from employees
WHERE job_id Like 'IT%';

--�߰� ������ null�� ����� �̸��� �߰����� ���
SELECT first_name,commission_pct
FROM employees
WHERE commission_pct is not null;

--50�� �μ��߿� �޿��� 2000���� ���� ����� �̸��� �μ���ȣ,�޿� ��ȸ
 SELECT  department_id, last_name, salary
 FROM employees
 WHERE salary < 3000
 AND department_id  = 50;
 
 --100�� �μ��߿� �޿��� 4000�̻��� ����� �����ȣ �μ���ȣ �Է�
  SELECT  department_id, last_name, salary
 FROM employees
 WHERE salary < 4000
 AND department_id  = 100;
 
select *
FROM employees;
 
 --�޿��� 3000���� 4500���̰� �ƴ� ����� �����ȣ, ���� �޿���ȸ
 SELECT salary,employee_id
 FROM employees
 WHERE salary NOT BETWEEN 3000 AND 4500;
 --�μ���ȣ�� 50,80,90,100�� �ƴ� ����� �̸� �μ� ��ȣ ��ȸ
 SELECT first_name,phone_number,employee_id
 FROM employees
 WHERE employee_id NOT IN('50','80','90','100');
 --�̸��� a�� ���Ե��� ���� ����� �̸��� �Ի����� ��ȸ
 
 --�߰������� �ְ� �Ի����ڰ� 2005�� ������ ����� �̸��� �Ի�����, �߰� ���� ��ȸ
 
 --�μ��� ������������ ����, ����ʵ� ���̸� ��ȸ
SELECT department_id,first_name,salary
 from employees
 where department_id > 80
 ORDER BY 3,3 ;
 
 --������ ����������� ��� �����ȣ , �μ���ȣ ,����
 SELECT employee_id,department_id,salary*12 as "�� ��"
 from employees
 ORDER BY "�� ��" DESC;