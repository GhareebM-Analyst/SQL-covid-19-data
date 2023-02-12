drop database covid_19;
CREATE DATABASE IF NOT EXISTS covid_19;
USE covid_19;

DROP TABLE IF EXISTS  demographics;
CREATE TABLE demographics(
iso_code varchar(8) primary key,
continent varchar(15),
location varchar(55),
population varchar(16),
median_age varchar(15),
aged_65_older varchar(15),
aged_70_older varchar(15),
diabetes_prevalence varchar(15),
female_smokers varchar(15),
male_smokers varchar(15)
);
 
DROP TABLE IF EXISTS vaccination;
CREATE TABLE vaccination(
vacc_id int primary key AUTO_INCREMENT,
iso_code varchar(8),
total_tests varchar(16),
new_tests varchar(16),
positive_rate varchar(16),
people_vaccinated varchar(16),
people_fully_vaccinated varchar(16)
);

DROP TABLE IF EXISTS covid_19_cases;
CREATE TABLE covid_19_cases(
case_id int primary key AUTO_INCREMENT,
vacc_id int,
iso_code varchar(8),
case_date date,
new_cases varchar(16),
new_deaths varchar(16)
 );
 
