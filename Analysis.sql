SELECT COUNT(*) FROM patients;
SELECT COUNT(*) FROM doctors;
SELECT COUNT(*) FROM department;
SELECT COUNT(*) FROM staff;
SELECT COUNT(*) FROM appointments;
SELECT COUNT(*) FROM admission;
SELECT COUNT(*) FROM prescriptions;
SELECT COUNT(*) FROM bills;
SELECT COUNT(*) FROM medicines;
SELECT SUM(total_amount) AS total_bill FROM bills;

-- Patient Analysis

SELECT COUNT(*) FROM patients WHERE gender = "Male";
SELECT COUNT(*) FROM patients WHERE gender = "Female";
SELECT COUNT(*) FROM patients WHERE city = "Kolkata";
SELECT COUNT(*) FROM patients WHERE city = "Howrah";
SELECT COUNT(*) FROM patients WHERE city = "Durgapur";
SELECT COUNT(*) FROM patients WHERE city = "Siliguri";
SELECT gender, COUNT(*) AS gender_basis FROM patients
GROUP BY gender;
SELECT city, COUNT(*) AS city_basis FROM patients GROUP BY city;
SELECT MIN(registration_date) AS earliest_registration FROM patients;
SELECT MAX(registration_date) AS latest_registration FROM patients;

-- Doctor & Department Analysis

SELECT department_name, COUNT(*) AS department_basis FROM department
GROUP BY department_name;
SELECT specialization, COUNT(*) AS basis FROM doctors
GROUP BY specialization;
SELECT department_id, COUNT(*) AS total_doctors
FROM doctors
GROUP BY department_id;
SELECT AVG(total_doctors) AS average_doctors
FROM (
    SELECT department_id, COUNT(*) AS total_doctors
    FROM doctors
    GROUP BY department_id
) AS department_doctors;
SELECT doctor_name FROM doctors WHERE hire_date < '2020-01-01';
SELECT doctor_name FROM doctors WHERE hire_date > '2020-01-01';
SELECT MIN(hire_date) AS earliest_hiring FROM doctors;
SELECT MAX(hire_date) AS lastest_hiring FROM doctors;
SELECT
d.doctor_name,
d.specialization,
dp.department_name
FROM doctors AS d JOIN department AS dp
ON d.department_id = dp.department_id;

-- Appointment Analysis

SELECT COUNT(*) AS completed_appointments
 -- FROM appointments
WHERE appointment_status = 'Completed';
SELECT COUNT(*) AS cancelled_appointments
FROM appointments
WHERE appointment_status = 'Cancelled';
SELECT COUNT(*) AS no_show_appointments
FROM appointments
WHERE appointment_status = 'No Show';
SELECT appointment_status, COUNT(*) AS total_appointments
FROM appointments
GROUP BY appointment_status;
SELECT doctor_id, COUNT(*) AS total_appointments
FROM appointments
GROUP BY doctor_id
ORDER BY total_appointments DESC
LIMIT 1;
SELECT patient_id, COUNT(*) AS total_appointments
FROM appointments
GROUP BY patient_id
ORDER BY total_appointments DESC
LIMIT 1;
SELECT appointment_date, COUNT(*) AS total_appointments
FROM appointments
GROUP BY appointment_date
ORDER BY appointment_date;
SELECT MIN(appointment_date) AS earliest_appointment
FROM appointments;
SELECT MAX(appointment_date) AS latest_appointment
FROM appointments;
SELECT doctor_id, COUNT(*) AS total_appointments
FROM appointments
GROUP BY doctor_id;

-- admission analysis

SELECT COUNT(*) AS total_admission FROM admission;
SELECT COUNT(*) AS emergency_admission FROM admission WHERE admission_type = "Emergency";
SELECT COUNT(*) AS elective_admission FROM admission WHERE admission_type = "Elective";
SELECT admission_type, COUNT(*) FROM admission GROUP BY admission_type;
SELECT MIN(admission_date) AS earliest_admission FROM admission;
SELECT MAX(admission_date) AS latest_admission FROM admission;
SELECT AVG(DATEDIFF(discharge_date, admission_date)) AS average_stay_days FROM admission;
SELECT patient_id, DATEDIFF(discharge_date, admission_date) AS stay_days FROM admission ORDER BY stay_days LIMIT 1;
SELECT doctor_id, COUNT(*) AS handeld_patient FROM admission GROUP BY doctor_id ORDER BY handeld_patient LIMIT 1;
SELECT room_number, COUNT(*) AS total_room FROM admission GROUP BY room_number;

--  medicine analysis

SELECT  COUNT(*) AS total_medicines FROM medicines;
SELECT SUM(stock_quantity) AS total_stock FROM medicines;
SELECT AVG(unit_price) AS average_price FROM medicines;
SELECT MAX(unit_price) AS most_expancive_medicine FROM medicines;
SELECT MIN(unit_price) AS chepast_medicine FROM medicines;
SELECT category, COUNT(*) AS each_medicine FROM medicines
GROUP BY category;
SELECT MAX(category) AS highest_number_of_medicine FROM medicines;
SELECT MAX(stock_quantity) AS highest_stock_quantity FROM medicines;
SELECT MIN(stock_quantity) AS lowest_stock_quantity FROM medicines;
SELECT supplier, COUNT(*) AS total_medicine FROM medicines GROUP BY supplier;

-- prescriptions analysis 

SELECT COUNT(*) AS issued_prescriptions FROM prescriptions;
SELECT medicine_id, COUNT(*) AS prescription_count FROM prescriptions GROUP BY medicine_id;
SELECT medicine_id,COUNT(*) AS most_prescribed FROM prescriptions GROUP BY medicine_id ORDER BY most_prescribed DESC LIMIT 1;
SELECT medicine_id,COUNT(*) AS most_prescribed FROM prescriptions GROUP BY medicine_id ORDER BY most_prescribed ASC LIMIT 1;
SELECT doctor_id, COUNT(*) AS issued_by_doctor FROM prescriptions GROUP BY doctor_id;
SELECT MAX(doctor_id) AS issued_hoghest_prescroptions FROM prescriptions;
SELECT patient_id, COUNT(*) AS total_prescriptions FROM prescriptions GROUP BY patient_id;
SELECT AVG(duration_days) AS average_duration_date FROM prescriptions;
SELECT MAX(duration_days) AS longest_duration
FROM prescriptions;
SELECT MIN(duration_days) AS shortest_duration
FROM prescriptions;

-- 1. Total number of staff
SELECT COUNT(*) AS total_staff
FROM staff;
SELECT department_id, COUNT(*) AS total_staff
FROM staff
GROUP BY department_id;
SELECT staff_role, COUNT(*) AS total_staff
FROM staff
GROUP BY staff_role;
SELECT department_id, COUNT(*) AS total_staff
FROM staff
GROUP BY department_id
ORDER BY total_staff DESC
LIMIT 1;
SELECT department_id, COUNT(*) AS total_staff
FROM staff
GROUP BY department_id
ORDER BY total_staff ASC
LIMIT 1;
SELECT AVG(staff_salary) AS average_salary
FROM staff;
SELECT MAX(staff_salary) AS highest_salary
FROM staff;
SELECT MIN(staff_salary) AS lowest_salary
FROM staff;
SELECT staff_name, hire_date
FROM staff
WHERE hire_date < '2020-01-01';
SELECT staff_name, hire_date
FROM staff
WHERE hire_date > '2020-01-01';