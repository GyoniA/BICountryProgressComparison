USE PKK65QCountry;

DROP TABLE UN_Indicators_Staging;
DROP TABLE WB_School_Enrollment_Staging;
DROP TABLE WB_GDP_Staging;
DROP TABLE WB_GNI_Staging;
DROP TABLE WB_Global_Savings_Staging;
DROP TABLE WB_Global_PPP_Staging;

DROP TABLE UN_Indicators_Raw;
DROP TABLE WB_Raw;

ALTER TABLE CountryStats_Fact DROP FOREIGN KEY countrystats_fact_ibfk_1;
ALTER TABLE CountryStats_Fact DROP FOREIGN KEY countrystats_fact_ibfk_2;

DROP TABLE CountryStats_Fact;
DROP TABLE Country_Dim;
DROP TABLE Year_Dim;