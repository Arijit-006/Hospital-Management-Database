# 🏥 Hospital Management & Healthcare Analytics

A MySQL-based database and data analysis project that manages and analyzes hospital information including patients, doctors, departments, appointments, admissions, medicines, prescriptions, billing, and staff. The project demonstrates how SQL can be used to organize relational data and generate meaningful healthcare insights.

## 🎯 Project Objective

The main objective of this project is to build a structured hospital management database and analyze hospital data using MySQL.

The project focuses on understanding patient activity, doctor and department information, appointments, admissions, medicines, prescriptions, billing, and staff-related information through SQL queries.

The project is designed as part of my learning journey in SQL and Data Analytics.

## 🗄️ Database Structure

The database contains 9 related tables:

1. **Patients** – Stores patient personal and registration information.
2. **Department** – Stores hospital department names and locations.
3. **Doctors** – Stores doctor details, specialization, hiring date, and department.
4. **Appointments** – Stores patient appointments, dates, times, status, and reasons.
5. **Admission** – Stores patient admission, discharge, admission type, and room information.
6. **Medicines** – Stores medicine names, categories, prices, stock, and suppliers.
7. **Prescriptions** – Stores patient, doctor, medicine, dosage, and treatment duration.
8. **Bills** – Stores patient billing information, payment status, and payment method.
9. **Staff** – Stores staff roles, departments, hiring dates, and salaries.

## 📊 Data Analysis

The project performs analysis across different areas of hospital management.

### 👨‍⚕️ Hospital Overview

The project analyzes:

- Total Patients
- Total Doctors
- Total Departments
- Total Staff
- Total Appointments
- Total Admissions
- Total Prescriptions
- Total Medicines
- Total Hospital Billing

### 🧑‍🤝‍🧑 Patient Analysis

Patient data is analyzed to understand:

- Patients by Gender
- Patients by City
- City-wise Patient Distribution
- Earliest Registration Date
- Latest Registration Date

### 👨‍⚕️ Doctor & Department Analysis

Doctor and department information is analyzed to understand:

- Doctors by Department
- Doctors by Specialization
- Average Doctors per Department
- Doctors Hired Before/After 2020
- Earliest Doctor Hiring Date
- Latest Doctor Hiring Date
- Doctor and Department Details

### 📅 Appointment Analysis

Appointment data is analyzed to identify:

- Completed Appointments
- Cancelled Appointments
- No-Show Appointments
- Appointment Status Distribution
- Appointments by Doctor
- Appointments by Patient
- Appointments by Date
- Earliest Appointment Date
- Latest Appointment Date

### 🏥 Admission Analysis

Admission records are analyzed to understand:

- Total Admissions
- Emergency Admissions
- Elective Admissions
- Admissions by Type
- Earliest Admission Date
- Latest Admission Date
- Average Length of Stay
- Longest Patient Stay
- Admissions by Doctor
- Admissions by Room

### 💊 Medicine Analysis

Medicine inventory is analyzed to identify:

- Total Medicines
- Total Stock Quantity
- Average Medicine Price
- Most Expensive Medicine
- Cheapest Medicine
- Medicines by Category
- Category-wise Medicine Distribution
- Highest and Lowest Stock
- Medicines by Supplier

### 💊 Prescription Analysis

Prescription records are analyzed to understand:

- Total Prescriptions
- Prescriptions by Medicine
- Most Prescribed Medicine
- Least Prescribed Medicine
- Prescriptions by Doctor
- Prescriptions by Patient
- Average Prescription Duration
- Longest and Shortest Prescription Duration

### 💰 Billing Analysis

Billing information is analyzed to identify:

- Total Hospital Revenue
- Average Bill Amount
- Highest Bill
- Lowest Bill
- Paid Bills
- Pending Bills
- Bills by Payment Status
- Payments by Method
- Revenue by Payment Method
- Patient with the Highest Total Billing

### 👥 Staff Analysis

Staff information is analyzed to understand:

- Total Staff
- Staff by Department
- Staff by Role
- Department with Highest Staff
- Department with Lowest Staff
- Average Staff Salary
- Highest Staff Salary
- Lowest Staff Salary
- Staff Hired Before/After 2020

## 👁️ SQL Views

The project also includes SQL Views for easier access to frequently used information:

- `patient_overview`
- `doctor_department`
- `appointments_summary`
- `admission_summary`
- `medicine_inventory`
- `prescription_details`
- `billing_summary`
- `staff_details`

These views combine and organize related information from different tables for easier analysis and reporting.

## 🛠️ SQL Skills Used

- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- LIMIT
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- JOIN
- DATEDIFF()
- CREATE VIEW
- Primary Keys
- Foreign Keys
- Relational Database Design
- Data Analysis

## 🔗 Table Relationships

The project uses foreign keys to connect related hospital information.

Examples include:

- Doctors → Departments
- Appointments → Patients
- Appointments → Doctors
- Admissions → Patients
- Admissions → Doctors
- Prescriptions → Patients
- Prescriptions → Doctors
- Prescriptions → Medicines
- Bills → Patients
- Staff → Departments

These relationships allow information from multiple tables to be combined and analyzed using SQL JOIN operations.

## 💡 Project Insights

The analysis helps understand different aspects of hospital operations, including patient distribution, doctor and department information, appointment activity, admission patterns, medicine inventory, prescription usage, staff information, and hospital billing.

The project demonstrates how relational hospital data can be transformed into meaningful information using SQL.

## 📁 Project Structure

The project contains:

1. **Database Creation** – Creation of the `hospital_management` database.
2. **Table Creation** – Creation of 9 relational tables.
3. **Data Insertion** – Sample hospital data inserted into all tables.
4. **Data Analysis** – SQL queries for hospital-related analysis.
5. **SQL Views** – Reusable views for important hospital information.
6. **Documentation** – Project documentation explaining the database and analysis.

## 🧰 Tool Used

**MySQL**

## 🚀 Learning Outcome

This project helped me practice relational database design, SQL queries, aggregate functions, filtering, grouping, joins, date calculations, foreign key relationships, and SQL views by applying them to a realistic hospital management dataset.

It represents one of my practical projects while learning **SQL and Data Analytics**.
