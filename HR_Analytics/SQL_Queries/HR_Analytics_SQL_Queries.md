*  **Creating Table HR Dataset**

CREATE TABLE HR\_Analytics (

&nbsp;   EmployeeID VARCHAR(10),

&nbsp;   Age INT,

&nbsp;   Gender VARCHAR(10),

&nbsp;   MaritalStatus VARCHAR(20),

&nbsp;   Education VARCHAR(20),

&nbsp;   Department VARCHAR(50),

&nbsp;   JobRole VARCHAR(50),

&nbsp;   MonthlyIncome INT,

&nbsp;   TotalWorkingYears INT,

&nbsp;   YearsAtCompany INT,

&nbsp;   PerformanceRating INT,

&nbsp;   Attrition VARCHAR(5),

&nbsp;   State VARCHAR(30)

);



*  **Inserting values to the created Table**



INSERT INTO HR\_Analytics VALUES

('E001',29,'F','Single','Bachelor','Sales','Sales Executive',42000,5,2,3,'Yes','Karnataka'),

('E002',35,'M','Married','Masters','HR','HR Specialist',58000,10,4,4,'No','Tamil Nadu'),

('E003',41,'F','Married','Bachelor','R\&D','Research Scientist',69000,14,7,3,'No','Maharashtra'),

('E004',26,'M','Single','Bachelor','Sales','Sales Representative',35000,3,1,3,'Yes','Andhra Pradesh'),

('E005',33,'M','Married','Masters','Finance','Financial Analyst',77000,9,5,4,'No','Karnataka'),

('E006',45,'F','Divorced','PhD','R\&D','Senior Scientist',95000,20,12,4,'No','Tamil Nadu'),

('E007',30,'F','Single','Bachelor','HR','HR Generalist',52000,6,3,3,'Yes','Kerala'),

('E008',38,'M','Married','Bachelor','Sales','Account Manager',88000,12,8,4,'No','Andhra Pradesh'),

('E009',27,'F','Single','Masters','Finance','Junior Accountant',41000,3,1,3,'Yes','Karnataka'),

('E010',50,'M','Married','Bachelor','R\&D','Lab Technician',62000,25,20,3,'No','Maharashtra'),

('E011',24,'F','Single','Bachelor','Sales','Sales Trainee',32000,2,1,2,'Yes','Tamil Nadu'),

('E012',36,'M','Married','Masters','IT','Software Engineer',78000,11,6,4,'No','Karnataka'),

('E013',32,'F','Married','Bachelor','IT','Data Analyst',86000,9,4,4,'No','Telangana'),

('E014',28,'M','Single','Bachelor','HR','HR Specialist',50000,4,2,3,'Yes','Kerala'),

('E015',44,'F','Married','PhD','R\&D','Senior Researcher',102000,18,15,4,'No','Tamil Nadu'),

('E016',39,'M','Married','Masters','Finance','Senior Accountant',90000,14,9,3,'No','Karnataka'),

('E017',31,'F','Single','Bachelor','Sales','Sales Executive',46000,6,3,3,'Yes','Andhra Pradesh'),

('E018',48,'M','Married','Bachelor','Operations','Operations Manager',110000,22,18,4,'No','Maharashtra'),

('E019',26,'F','Single','Masters','IT','Support Engineer',45000,3,1,3,'Yes','Kerala'),

('E020',34,'M','Married','Bachelor','Operations','Logistics Coordinator',56000,8,5,3,'No','Tamil Nadu');









*  **View Entire HR Dataset**

SELECT \* FROM HR\_Analytics;



*  **Total Number of Employees**

SELECT COUNT(\*) AS TotalEmployees

FROM HR\_Analytics;



* **Total Employees Who Left (Attrition Count)**

SELECT COUNT(\*) AS AttritionCount

FROM HR\_Analytics

WHERE Attrition = 'Yes';



*  **Total Active Employees**

SELECT COUNT(\*) AS ActiveEmployees

FROM HR\_Analytics

WHERE Attrition = 'NO';



*  **List of All Departments**

SELECT DISTINCT Department 

FROM HR\_Analytics;



*  **Employee Count by Department**

SELECT Department, COUNT(\*) AS EmployeeCount

FROM HR\_Analytics

GROUP BY Department;



*  **Employees Who Left by Department**

SELECT Department, COUNT(\*) AS LeftEmployees

FROM HR\_Analytics

WHERE Attrition = 'Yes'

GROUP BY Department;



*  **Active Employees by Department**

SELECT Department, COUNT(\*) AS ActiveEmployees

FROM HR\_Analytics

WHERE Attrition = 'No'

GROUP BY Department;



*  **Average Salary by Department**

SELECT Department, AVG(MonthlyIncome) AS AvgSalary

FROM HR\_Analytics

GROUP BY Department;



* **Average Age by Job Role**

SELECT JobRole, AVG(Age) AS AvgAge

FROM HR\_Analytics

GROUP BY JobRole;



* **Top 3 Employees by Performance and Salary**

SELECT EmployeeID, JobRole, PerformanceRating, MonthlyIncome

FROM HR\_Analytics

ORDER BY PerformanceRating DESC, MonthlyIncome DESC

LIMIT 3;



*  **Bottom 3 Employees by Performance and Salary**

SELECT EmployeeID, JobRole, PerformanceRating, MonthlyIncome

FROM HR\_Analytics

ORDER BY PerformanceRating ASC, MonthlyIncome ASC

LIMIT 3;



* **Employee Count by State**

SELECT State, COUNT(\*) AS EmployeeCount

FROM HR\_Analytics

GROUP BY State

ORDER BY EmployeeCount DESC;



*  **Average Experience for Attrition vs Non-Attrition**

SELECT 

&nbsp;   Attrition,

&nbsp;   AVG(TotalWorkingYears) AS AvgExperience

FROM HR\_Analytics

GROUP BY Attrition;



* **Employees With High Salary (> 80,000)**

SELECT \*

FROM HR\_Analytics

WHERE MonthlyIncome > 80000;



* **Salary Range (Min, Max, Avg) by Department**

SELECT Department,

&nbsp;      MIN(MonthlyIncome) AS MinSalary,

&nbsp;      MAX(MonthlyIncome) AS MaxSalary,

&nbsp;      AVG(MonthlyIncome) AS AvgSalary

FROM HR\_Analytics

GROUP BY Department;



* **Employees With High Salary AND High Experience**

SELECT EmployeeID, JobRole, MonthlyIncome, YearsAtCompany

FROM HR\_Analytics

WHERE YearsAtCompany > 5

&nbsp; AND MonthlyIncome > 60000;



*  **Gender Distribution of Active Employees**

select gender, count(\*) as gender\_count

from HR\_Analytics

where attrition = 'no' 

group by gender;



