CREATE DATABASE PKK65QCountry;

USE PKK65QCountry;

CREATE TABLE UN_Indicators_Staging (
    Country NVARCHAR(255),
    Year INT,
	TotalPopulationJul FLOAT, -- Total population as of July 1st
    PopulationDensityJul FLOAT, -- Population density as of July 1st
    SexRatioJul FLOAT, -- Sex ratio as of July 1st (males/100 females)
    MedianAgeJul FLOAT, -- Median age as of July 1st
    NetReproductionRate FLOAT, -- Net reproduction rate (surviving daughters/ woman)
    LifeExpectancy FLOAT -- Life expectancy at birth (both sexes)
);

CREATE TABLE WB_School_Enrollment_Staging (
    Country NVARCHAR(255),
    Year INT,
    School_Enrollment_Percent FLOAT -- Primary school enrollment (% net)
);

CREATE TABLE WB_GDP_Staging (
    Country NVARCHAR(255),
    Year INT,
    GDP FLOAT -- Gross domestic product (current US$)
);

CREATE TABLE WB_GNI_Staging (
    Country NVARCHAR(255),
    Year INT,
    GNI FLOAT -- Gross national income (Atlas method)
);

CREATE TABLE WB_Global_Savings_Staging (
    Country NVARCHAR(255),
    Year INT,
    Global_Savings FLOAT -- Gross savings % of GDP
);

CREATE TABLE WB_Global_PPP_Staging (
    Country NVARCHAR(255),
    Year INT,
    Global_PPP FLOAT -- Global PPP conversion factor
);