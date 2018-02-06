-- Frequency Table
.print ' '
.print 'Importing Data'

CREATE TABLE "FLinsurance" (

policyID INTEGER,
statecode TEXT,
county TEXT,
eq_site_limit INTEGER,
hu_site_limit INTEGER,
fl_site_limit INTEGER,
fr_site_limit INTEGER,
tiv_2011 INTEGER,
tiv_2012 INTEGER,
eq_site_deductible INTEGER,
hu_site_deductivble INTEGER,
fl_site_deductible INTEGER,
fr_site_dedcutible INTEGER,
point_latitude REAL,
point_longitude REAL,
line TEXT,
construction TEXT,
point_granularity INTEGER

);

.separator ","


-- Reading in the Florida Insurance Data
.mode csv
.import FL_insurance_sample.csv FLinsurance

-- Print the first 10 rows of the data set
.print ' '
.print 'View first 10 observations'
SELECT * FROM FLinsurance LIMIT 10;

-- Listing counties in the sample
.print ' '
.print 'Counties'
SELECT count(county) FROM FLinsurance;

-- 2011 to 2012 Average Property appreciation
.print ' '
.print 'Mean Appreciation'

-- Selecting independtly within the data
SELECT AVG(tiv_2011) FROM FLinsurance;
SELECT AVG(tiv_2012) FROM FLinsurance;
SELECT AVG(tiv_2012-tiv_2011) FROM FLinsurance;



  
