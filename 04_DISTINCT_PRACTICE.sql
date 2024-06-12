-- EMPLOYEE 테이블에서 SAL_LEVEL의 중복을 제거하고 고유한 급여 등급을 조회하시오.
select distinct SAL_LEVEL
from employee;

-- EMPLOYEE 테이블에서 MANAGER_ID의 중복을 제거하고 고유한 관리자 사번을 조회하시오. (NULL 값 포함)
select distinct MANAGER_ID from employee;
-- EMPLOYEE 테이블에서 DEPT_CODE와 JOB_CODE의 조합을 중복없이 조회하시오. (NULL 값 포함)
select distinct DEPT_CODE, JOB_CODE from employee
