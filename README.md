##Hospital Management & Healthcare Analytics

Project Overview

The Hospital Management & Healthcare Analytics project is a
MySQL-based relational database project designed to organize and analyze
hospital data. It covers patients, doctors, departments, appointments,
admissions, medicines, prescriptions, billing, and staff.

The project demonstrates practical SQL skills through database design,
data management, analytical queries, joins, aggregate functions, date
calculations, and SQL views.

Objectives

Build a structured relational hospital database.

Store hospital information across multiple related tables.

Analyze healthcare operations using SQL.

Generate useful summaries from hospital records.

Create reusable SQL views for reporting and analysis.

Technologies Used

MySQL

SQL

Relational Database Design

SQL Joins

Aggregate Functions

SQL Views

Database Structure

Database name:

hospital_management

The project contains 9 tables:

Table                               Description

patients                          Stores patient personal and
registration information.

department                        Stores hospital departments and
locations.

doctors                           Stores doctor details,
specialization and department
assignment.

appointments                      Stores appointment date, time,
status and reason.

admission                         Stores admission, discharge and
room information.

medicines                         Stores medicine category, price,
stock and supplier details.

prescriptions                     Stores patient, doctor, medicine,
dosage and treatment duration.

bills                             Stores billing amount, payment
status and payment method.

Data

Sample data was inserted into all 9 tables.

50 patient records

50 department records

50 doctor records

50 appointment records

50 admission records

50 medicine records

50 prescription records

50 billing records

50 staff records

Analysis Performed

1. Hospital Overview

Total patients

Total doctors

Total departments

Total staff

Total appointments

Total admissions

Total prescriptions

Total medicines

Total billing amount

2. Patient Analysis

Patient count by gender

Patient count by city

City-wise patient distribution

Earliest registration date

Latest registration date

3. Doctor & Department Analysis

Doctors by department

Doctors by specialization

Average doctors per department

Doctor hiring analysis

Earliest and latest hiring dates

Doctor and department details

4. Appointment Analysis

Completed appointments

Cancelled appointments

No-show appointments

Appointment status distribution

Appointments by doctor

Appointments by patient

Appointment date analysis

5. Admission Analysis

Total admissions

Emergency and elective admissions

Admissions by type

Earliest and latest admission dates

Average length of stay

Longest patient stay

Admissions by doctor

Admissions by room

6. Medicine Analysis

Total medicines

Total stock quantity

Average medicine price

Most and least expensive medicines

Medicines by category

Category-wise medicine distribution

Stock analysis

Medicines by supplier

7. Prescription Analysis

Total prescriptions

Prescriptions by medicine

Most and least prescribed medicines

Prescriptions by doctor

Prescriptions by patient

Average prescription duration

Longest and shortest duration

8. Billing Analysis

Total hospital revenue

Average bill amount

Highest and lowest bills

Paid and pending bills

Bills by payment status

Payments by method

Revenue by payment method

Patient with the highest total billing

9. Staff Analysis

Total staff

Staff by department

Staff by role

Highest and lowest staff count by department

Average staff salary

Highest and lowest salary

Staff hiring analysis

SQL Concepts Used

The project uses the following SQL concepts:

SELECT

WHERE

GROUP BY

ORDER BY

LIMIT

COUNT()

SUM()

AVG()

MIN()

MAX()

JOIN

DATEDIFF()

CREATE VIEW

SQL Views

The project contains the following reusable views:

View                                Purpose

patient_overview                  Provides patient and registration
details.

doctor_department                 Combines doctor and department
information.

appointments_summary              Provides appointment information.

admission_summary                 Provides admission information.

medicine_inventory                Provides medicine inventory
information.

prescription_details              Combines prescription, patient,
doctor and medicine details.

billing_summary                   Combines billing records with
patient information.

Example Queries

Total Hospital Revenue

SELECT SUM(total_amount) AS total_revenue
FROM bills;

Patient Count by City

SELECT city, COUNT(*) AS total_patients
FROM patients
GROUP BY city;

Average Admission Stay

SELECT AVG(DATEDIFF(discharge_date, admission_date)) AS average_stay
FROM admission;

Doctor and Department Details

SELECT
    d.doctor_name,
    d.specialization,
    dp.department_name
FROM doctors AS d
JOIN department AS dp
    ON d.department_id = dp.department_id;

Project Workflow

Created the hospital_management database.

Created 9 relational tables.

Defined primary and foreign keys.

Inserted sample hospital data.

Performed SQL-based data analysis.

Created reusable SQL views.

Documented the database structure and analysis.

Project Outcome

This project demonstrates the practical use of MySQL for relational
database management and healthcare data analysis. It shows how
structured hospital records can be connected and analyzed using SQL to
produce meaningful operational, medical, staffing, inventory, and
financial information.

Skills Demonstrated

MySQL Database Management

Relational Database Design

SQL Data Analysis

Primary and Foreign Keys

Multi-table Joins

Aggregate Functions

Grouping and Filtering

Date-based Analysis

SQL Views

Healthcare Data Analysis
