
---//Probability of dying between birth and age 1 per 1000 live births//---

CREATE TABLE infantMortalityRate(
indicator_data VARCHAR(400) NOT NULL,
case_id VARCHAR(500) NOT NULL PRIMARY KEY,
first_looltip FLOAT NOT NULL,
range_low FLOAT NOT NULL,
range_high FLOAT NOT NULL
);

--//Probability of dying between the age of 30 and exact age of 70 from any of the 
--cardiovascular disease, cancer, diabetes, or chronic respiratory disease//---

CREATE TABLE diseases(
indicator_data VARCHAR(400) NOT NULL,
case_id VARCHAR(500) NOT NULL PRIMARY KEY,
first_looltip FLOAT NOT NULL
);
--/Adolescent birth rate per 1000 women aged 15-19 years//

CREATE TABLE AdolescentBirh(
case_id VARCHAR(500) NOT NULL PRIMARY KEY,
indicator_data VARCHAR(400) NOT NULL,
first_looltip FLOAT NOT NULL
);
--//Ambient and household air pollution attributable death rate per 100,00 population and the same data with age-standardized
--Chronic obstructive pulmonary disease//--
CREATE TABLE airPollutionDeathRate_pulmonary(
disease VARCHAR(500) NOT NULL,
indicator_data VARCHAR(400) NOT NULL,
case_id VARCHAR(500) NOT NULL PRIMARY KEY,
first_looltip FLOAT NOT NULL,
range_low FLOAT NOT NULL,
range_high FLOAT NOT NULL,
FOREIGN KEY(case_id) REFERENCES diseases(case_id)
);
--//Ambient and household air pollution attributable death rate per 100,00 population and the same data with age-standardized
--Ischaemic heart disease//--
CREATE TABLE airPollutionDeathRate_ischeamic(
disease VARCHAR(500) NOT NULL,
indicator_data VARCHAR(400) NOT NULL,
case_id VARCHAR(500) NOT NULL PRIMARY KEY,
first_looltip FLOAT NOT NULL,
range_low FLOAT NOT NULL,
range_high FLOAT NOT NULL,
FOREIGN KEY(case_id) REFERENCES diseases(case_id)
);
--//Ambient and household air pollution attributable death rate per 100,00 population and the same data with age-standardized
--Lower respiratory infections//--
CREATE TABLE airPollutionDeathRate_respinfections(
disease VARCHAR(500) NOT NULL,
indicator_data VARCHAR(400) NOT NULL,
case_id VARCHAR(500) NOT NULL PRIMARY KEY,
first_looltip FLOAT NOT NULL,
range_low FLOAT NOT NULL,
range_high FLOAT NOT NULL,
FOREIGN KEY(case_id) REFERENCES diseases(case_id)
);
--//Ambient and household air pollution attributable death rate per 100,00 population and the same data with age-standardized
--Stroke//--
CREATE TABLE airPollutionDeathRate_stroke(
disease VARCHAR(500) NOT NULL,
indicator_data VARCHAR(400) NOT NULL,
case_id VARCHAR(500) NOT NULL PRIMARY KEY,
first_looltip FLOAT NOT NULL,
range_low FLOAT NOT NULL,
range_high FLOAT NOT NULL,
FOREIGN KEY(case_id) REFERENCES diseases(case_id)
);
--//Ambient and household air pollution attributable death rate per 100,00 population and the same data with age-standardized
--Trachea, bronchus, lung cancersTrachea, bronchus, lung cancers//--

CREATE TABLE airPollutionDeathRate_cancers(
disease VARCHAR(500) NOT NULL,
indicator_data VARCHAR(400) NOT NULL,
case_id VARCHAR(500) NOT NULL PRIMARY KEY,
first_looltip FLOAT NOT NULL,
range_low FLOAT NOT NULL,
range_high FLOAT NOT NULL,
FOREIGN KEY(case_id) REFERENCES diseases(case_id)
);


--// Total (recorded + unrecorded) alcohol per capita (15 +)
--consumption’s Total (recorded + unrecorded) alcohol per capita (15 +) consumption’s//
CREATE TABLE AlcoholSubstanceAbuse(
indicator_data VARCHAR(400) NOT NULL,
case_id VARCHAR(500) NOT NULL PRIMARY KEY,
first_looltip FLOAT NOT NULL,
FOREIGN KEY(case_id) REFERENCES diseases(case_id)
);
