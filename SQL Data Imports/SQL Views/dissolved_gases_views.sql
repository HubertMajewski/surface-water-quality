create or replace view dissolvedgases2018 as 
select
date(se."collectDate") as date
,se."domainID" 
,se."siteID" 
,avg(se."concentrationCH4") as  "concentrationCH4"
,avg(se."concentrationCO2") as "concentrationCO2"
,avg(se."concentrationN2O") as "concentrationN2O"
,avg(se."volumeGasAnalyzed") as "volumeGasAnalyzed"
,avg(se."gasStandardAccuracy") as "gasStandardAccuracy"
 from dissolved_gases.sdg_externallabdata se
 where date_part('year',"collectDate") = 2018
group by date
,se."domainID" 
,se."siteID";


create or replace view dissolvedgases2019 as 
select
date(se."collectDate") as date
,se."domainID" 
,se."siteID" 
,avg(se."concentrationCH4") as  "concentrationCH4"
,avg(se."concentrationCO2") as "concentrationCO2"
,avg(se."concentrationN2O") as "concentrationN2O"
,avg(se."volumeGasAnalyzed") as "volumeGasAnalyzed"
,avg(se."gasStandardAccuracy") as "gasStandardAccuracy"
 from dissolved_gases.sdg_externallabdata se
 where date_part('year',"collectDate") = 2019
group by date
,se."domainID" 
,se."siteID" ;

create or replace view dissolvedgases2020 as 
select
date(se."collectDate") as date
,se."domainID" 
,se."siteID" 
,avg(se."concentrationCH4") as  "concentrationCH4"
,avg(se."concentrationCO2") as "concentrationCO2"
,avg(se."concentrationN2O") as "concentrationN2O"
,avg(se."volumeGasAnalyzed") as "volumeGasAnalyzed"
,avg(se."gasStandardAccuracy") as "gasStandardAccuracy"
 from dissolved_gases.sdg_externallabdata se
 where date_part('year',"collectDate") = 2020
group by date
,se."domainID" 
,se."siteID" ;

select * from dissolvedgases2018 d 