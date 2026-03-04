create database ibm_hr_analytics;

USE ibm_hr_analytics;
select count(*) from ibm_hr_data;
select * from ibm_hr_data limit 10;

select count(*) AS Employees_Left
from ibm_hr_data
where Attrition = 'Yes';

SELECT 
    COUNT(*) as Total_Employees ,
    SUM(Attrition = 'Yes') AS Employees_Left,
    SUM(Attrition = 'No') AS Employees_Stayed
FROM ibm_hr_data;

SELECT 
    COUNT(*) AS Total_Employees,
    SUM(Attrition = 'Yes') AS Employees_Left,
    SUM(Attrition = 'No') AS Employees_Stayed,
    ROUND(SUM(Attrition = 'Yes') / COUNT(*) * 100, 2) AS Attrition_Rate_Percentage,
    ROUND(SUM(Attrition = 'No') / COUNT(*) * 100, 2) AS Retention_Rate_Percentage
FROM ibm_hr_data;

SELECT 
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Attrition = 'Yes') AS Employees_Left,
    ROUND(SUM(Attrition = 'Yes') / COUNT(*) * 100, 2) AS Attrition_Rate
FROM ibm_hr_data
GROUP BY Department
ORDER BY Attrition_Rate DESC;

SELECT 
    OverTime,
    COUNT(*) AS Total_Employees,
    SUM(Attrition = 'Yes') AS Employees_Left,
    ROUND(SUM(Attrition = 'Yes') / COUNT(*) * 100, 2) AS Attrition_Rate
FROM ibm_hr_data
GROUP BY OverTime
ORDER BY Attrition_Rate DESC;

SELECT 
    `Income Band`,
    COUNT(*) AS Total_Employees,
    SUM(Attrition = 'Yes') AS Employees_Left,
    ROUND(SUM(Attrition = 'Yes') / COUNT(*) * 100, 2) AS Attrition_Rate
FROM ibm_hr_data
GROUP BY `Income Band`
ORDER BY Attrition_Rate DESC;

SELECT 
    `Age Band`,
    COUNT(*) AS Total_Employees,
    SUM(Attrition = 'Yes') AS Employees_Left,
    ROUND(SUM(Attrition = 'Yes') / COUNT(*) * 100, 2) AS Attrition_Rate
FROM ibm_hr_data
GROUP BY `Age Band`
ORDER BY Attrition_Rate DESC;

SELECT 
    COUNT(*) AS Total_Under30_LowIncome,
    SUM(Attrition = 'Yes') AS Left_Count,
    ROUND(SUM(Attrition = 'Yes') / COUNT(*) * 100, 2) AS Attrition_Rate
FROM ibm_hr_data
WHERE `Age Band` = 'Under 30'
AND `Income Band` = 'Low';

SELECT 
    OverTime,
    COUNT(*) AS Total_Employees,
    SUM(Attrition = 'Yes') AS Employees_Left,
    ROUND(SUM(Attrition = 'Yes') / COUNT(*) * 100, 2) AS Attrition_Rate
FROM ibm_hr_data
GROUP BY OverTime
ORDER BY Attrition_Rate DESC;

SELECT 
    JobRole,
    COUNT(*) AS Total_Employees,
    SUM(Attrition = 'Yes') AS Employees_Left,
    ROUND(SUM(Attrition = 'Yes') / COUNT(*) * 100, 2) AS Attrition_Rate
FROM ibm_hr_data
GROUP BY JobRole
ORDER BY Attrition_Rate DESC;