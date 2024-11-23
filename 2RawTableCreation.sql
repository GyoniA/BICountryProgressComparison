USE PKK65QCountry;

CREATE TABLE UN_Indicators_Raw (
    Country NVARCHAR(255),
    Year INT,
	TotalPopulationJul FLOAT, -- Total population as of July 1st
    PopulationDensityJul FLOAT, -- Population density as of July 1st
    SexRatioJul FLOAT, -- Sex ratio as of July 1st (males/100 females)
    MedianAgeJul FLOAT, -- Median age as of July 1st
    NetReproductionRate FLOAT, -- Net reproduction rate (surviving daughters/ woman)
    LifeExpectancy FLOAT -- Life expectancy at birth (both sexes)
);

CREATE TABLE WB_Raw (
    Country NVARCHAR(255),
    Year INT,
    School_Enrollment_Percent FLOAT,  -- Primary school enrollment (% net)
    GDP FLOAT, -- Gross domestic product (current US$)
    GNI FLOAT, -- Gross national income (Atlas method)
    Global_Savings FLOAT, -- Gross savings % of GDP
    Global_PPP FLOAT -- Global PPP conversion factor
);
