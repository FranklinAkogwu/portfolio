/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[est_diameter_min]
      ,[est_diameter_max]
      ,[relative_velocity]
      ,[miss_distance]
      ,[orbiting_body]
      ,[sentry_object]
      ,[absolute_magnitude]
      ,[hazardous]
  FROM [Portfolio_Project].[dbo].[NEOs]

  --Find the average relative velocity of the observed objects

  SELECT AVG(relative_velocity) AS average_velocity
FROM [Portfolio_Project].[dbo].[NEOs]

--Deteremine the minimum and maximum miss distance of the observed objects
SELECT MIN(miss_distance) AS min_distance, MAX(miss_distance) AS max_distance
FROM [Portfolio_Project].[dbo].[NEOs]

--Find out how many objects are marked as sentry objects

SELECT COUNT(*) AS Sentry
FROM [Portfolio_Project].[dbo].[NEOs]
WHERE sentry_object = '1';

--Find out how many objects are marked as Hazardous

SELECT COUNT(*) AS Hazardous
FROM [Portfolio_Project].[dbo].[NEOs]
WHERE hazardous = '1';

--Find out how many objects are marked as Not Hazardous

SELECT COUNT(*) AS Non_Hazardous
FROM [Portfolio_Project].[dbo].[NEOs]
WHERE hazardous = '0';

--Find out the closest hazardous object

SELECT TOP 1 *
FROM [Portfolio_Project].[dbo].[NEOs]
WHERE hazardous = '1'
ORDER BY miss_distance ASC;

--Find out if there is any correlation between the estimated diameter and the relative velocity

SELECT 
    (COUNT(*) * SUM(est_diameter_min * relative_velocity) - SUM(est_diameter_min) * SUM(relative_velocity))
    / (SQRT((COUNT(*) * SUM(est_diameter_min * est_diameter_min)) - (SUM(est_diameter_min) * SUM(est_diameter_min))))
    / (SQRT((COUNT(*) * SUM(relative_velocity * relative_velocity)) - (SUM(relative_velocity) * SUM(relative_velocity))))
    AS correlation_coefficient
FROM [Portfolio_Project].[dbo].[NEOs]


SELECT 
    COUNT(*) AS total_orbiting_objects,
    SUM(CASE WHEN hazardous = '1' THEN 1 ELSE 0 END) AS hazardous_objects,
    SUM(CASE WHEN hazardous = '0' THEN 1 ELSE 0 END) AS non_hazardous_objects
FROM [Portfolio_Project].[dbo].[NEOs]
WHERE orbiting_body IS NOT NULL;
