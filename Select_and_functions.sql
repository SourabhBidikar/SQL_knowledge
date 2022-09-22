use adworks2019
--------Class 3 SELECT-------------------------

select * from HumanResources.Employee

select * from HumanResources.Employee 
where 
Gender='M' and
OrganizationLevel=3 and 
VacationHours > 40

select JobTitle,MaritalStatus,Gender,VacationHours from HumanResources.Employee 
where 
Gender='M' and
OrganizationLevel=3 and 
VacationHours > 40

---------ORDER BY---------
select JobTitle,MaritalStatus,Gender,VacationHours from HumanResources.Employee 
where 
Gender='M' and
OrganizationLevel=3 and 
VacationHours > 40
order by
VacationHours ASC ----------Can use DESC for descending--------


------------------OR with parenthesis-------------------------
select JobTitle,MaritalStatus,Gender,VacationHours from HumanResources.Employee 
where 
Gender='M' 
OR
Gender='F'
and
OrganizationLevel=3 and 
VacationHours > 40
order by
VacationHours ASC

-----above gave wrong output as OR was applied for all condition------
select JobTitle,MaritalStatus,Gender,VacationHours from HumanResources.Employee 
where 
(Gender='M' 
OR
Gender='F')
and
OrganizationLevel=3 and 
VacationHours > 40
order by
VacationHours ASC
---------------------------------------------
----IN is a shorthand for OR Clause---------

select JobTitle,MaritalStatus,Gender,VacationHours from HumanResources.Employee 
where 
Gender in ('M','F') and
OrganizationLevel=3 and 
VacationHours > 40
order by
VacationHours ASC
----------------------------------------------
---------------------------------------------

-------------BETWEEN-----------------------
select JobTitle,MaritalStatus,Gender,VacationHours 
from HumanResources.Employee
where
VacationHours between 40 and 50
----------------------------
select * from HumanResources.Employee;

select * from
HumanResources.Employee
where
OrganizationNode is null;

----------------------------

select [PersonType],[FirstName],[LastName]
from
Person.Person
where
FirstName like '_erri'

----------------------------
select distinct FirstName from Person.Person

----------------------------
select distinct FirstName as ef_name from Person.Person
----------------------------------------------------------
select top(50) * from person.person

-------------------------------------------------
select * from HumanResources.Employee;

select BusinessEntityID,SalariedFlag,VacationHours,
case 
when VacationHours between 20 and 50 then 'Good'
when VacationHours > 50 then 'Better'
else 'Not Specified'
end 
as Status
from HumanResources.employee
-------------------------------------------------

select Top(20) HireDate,
year(HireDate) as Year,
month(HireDate) as Month,
day(HireDate) as Day
from HumanResources.Employee
------------------------------------------

select [BusinessEntityID],BirthDate, HireDate,
DATEDIFF(year,BirthDate,HireDate) as AgeWhenHired,
DATEDIFF(year,BirthDate,'2022-09-22') as Age
from HumanResources.Employee

--------------------------------------------------------
select [BusinessEntityID],BirthDate, HireDate,
DATEADD(day,5,HireDate) as JoinDate
from HumanResources.Employee

