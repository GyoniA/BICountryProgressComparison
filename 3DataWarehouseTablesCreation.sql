USE PKK65QCountry;

-- Dimension Tables
CREATE TABLE Country_Dim (
    Country_ID INT AUTO_INCREMENT PRIMARY KEY,
    Country NVARCHAR(255) UNIQUE
);

CREATE TABLE Year_Dim (
    Year_ID INT AUTO_INCREMENT PRIMARY KEY,
    Year INT UNIQUE
);

-- Fact Table
CREATE TABLE CountryStats_Fact (
    Fact_ID INT AUTO_INCREMENT PRIMARY KEY,
    Country_ID INT,
    Year_ID INT,
    TotalPopulationJul FLOAT, -- Total population as of July 1st
    PopulationDensityJul FLOAT, -- Population density as of July 1st
    SexRatioJul FLOAT, -- Sex ratio as of July 1st (males/100 females)
    MedianAgeJul FLOAT, -- Median age as of July 1st
    NetReproductionRate FLOAT, -- Net reproduction rate (surviving daughters/ woman)
    LifeExpectancy FLOAT, -- Life expectancy at birth (both sexes)
    School_Enrollment_Percent FLOAT,  -- Primary school enrollment (% net)
    GDP FLOAT, -- Gross domestic product (current US$)
    GNI FLOAT, -- Gross national income (Atlas method)
    Global_Savings FLOAT, -- Gross savings % of GDP
    Global_PPP FLOAT, -- Global PPP conversion factor
    FOREIGN KEY (Country_ID) REFERENCES Country_Dim(Country_ID),
    FOREIGN KEY (Year_ID) REFERENCES Year_Dim(Year_ID)
);