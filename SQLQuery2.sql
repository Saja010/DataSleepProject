select * from Sleep_health_and_lifestyle_dataset

-- count for the genders
create view ConutOFGenders AS
select  Gender , count(gender)as ConutOFGenders
from Sleep_health_and_lifestyle_dataset
group by gender



--  Age avg

select  avg(cast(Age as int ))
from Sleep_health_and_lifestyle_dataset

-- std of Age
select  round(STDEV(cast(Age as int )),1)
from Sleep_health_and_lifestyle_dataset


-- the highest Occupation
create view OccupationCounts AS
select  Distinct Occupation, count(Occupation) as OccupationCounts
from Sleep_health_and_lifestyle_dataset
group by Occupation
order by count(Occupation) desc
 





-- avg of Sleep Duration
select avg(cast([Sleep _Duration]as float))
from Sleep_health_and_lifestyle_dataset

--Max and min of Sleep Duration
select max(cast([Sleep _Duration]as float))
from Sleep_health_and_lifestyle_dataset

select min(cast([Sleep _Duration]as float))
from Sleep_health_and_lifestyle_dataset



-- Quality of Sleepl

select avg(cast([Quality of Sleep]as float))
from Sleep_health_and_lifestyle_dataset

select max(cast([Quality of Sleep]as float))
from Sleep_health_and_lifestyle_dataset

select min(cast([Quality of Sleep]as float))
from Sleep_health_and_lifestyle_dataset


-- Physical Activity Level
select avg(cast([Physical Activity Level]as int))
from Sleep_health_and_lifestyle_dataset

------------------------------------------

create view PhysicalActivityLevelOFNurse AS
select avg(cast([Physical Activity Level]as int)) as PhysicalActivityLevelOFNurse
from Sleep_health_and_lifestyle_dataset
where Occupation ='Nurse'


-- most Occupation has Stress Level
create view mostOccupationhasStressLevel AS
select  Distinct Occupation , max(cast([Stress Level]as int)) as mostOccupationhasStressLevel
from Sleep_health_and_lifestyle_dataset
group by Occupation
order by max(cast([Stress Level]as int)) DESC



--BMI Category
create view BMICategoryconuts AS
select  Distinct [BMI Category] , count([BMI Category]) as BMICategoryconuts
from Sleep_health_and_lifestyle_dataset
group by [BMI Category]
order by count([BMI Category]) DESC 



-- Sleep Disorder
select  Distinct [Sleep Disorder], count([Sleep Disorder])
from Sleep_health_and_lifestyle_dataset
group by [Sleep Disorder]
order by count([Sleep Disorder]) DESC


-- Heart Rate
select  Distinct Occupation, max([Heart Rate])
from Sleep_health_and_lifestyle_dataset
group by Occupation
order by max([Heart Rate]) DESC


-- Sleep Disorder for Genders 
select  Distinct [Sleep Disorder] , count([Sleep Disorder])
from Sleep_health_and_lifestyle_dataset
where [Gender]= 'Female'
group by [Sleep Disorder]


select  Distinct [Sleep Disorder] , count([Sleep Disorder])
from Sleep_health_and_lifestyle_dataset
where [Gender]= 'Male'
group by [Sleep Disorder]




--








