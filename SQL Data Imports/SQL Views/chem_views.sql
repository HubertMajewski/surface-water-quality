create or replace view chem2018 as 
select 
date(se."startDate") as date
,se."domainID"
,se."siteID"
,se."laboratoryName"
,se."analyte"
,concat(se."analyteConcentration",', ' ,se."analyteUnits") as "analyteCon"
from chem.swc_externallabdatabyanalyte se
 where date_part('year',se."startDate" ) = 2018;
 
create or replace view chem2019 as 
select 
date(se."startDate") as date
,se."domainID"
,se."siteID"
,se."laboratoryName"
,se."analyte"
,concat(se."analyteConcentration",', ' ,se."analyteUnits") as "analyteCon"
from chem.swc_externallabdatabyanalyte se
 where date_part('year',se."startDate" ) = 2019;

create or replace view chem2020 as 
select 
date(se."startDate") as date
,se."domainID"
,se."siteID"
,se."laboratoryName"
,se."analyte"
,concat(se."analyteConcentration",', ' ,se."analyteUnits") as "analyteCon"
from chem.swc_externallabdatabyanalyte se
 where date_part('year',se."startDate" ) = 2020;
 
select * from chem2018 c 