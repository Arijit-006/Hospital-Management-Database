CREATE VIEW patient_overview AS 
SELECT
patient_id,
name,
gender,
date_of_birth,
phone_num,
city,
registration_date
FROM patients;
SELECT*FROM patient_overview ;

CREATE VIEW doctor_department AS 
SELECT
d.doctor_id,
d.doctor_name,
d.specialization,
d.doctor_phone,
d.hire_date,
d.department_id,
dp.department_name,
dp.location
FROM doctors AS d 
JOIN department AS dp
ON d.department_id = dp.department_id;
SELECT * FROM doctor_department;

CREATE VIEW appointments_summary AS 
SELECT
 appointment_id,
 patient_id,
 doctor_id,
 appointment_date,
 appointment_time,
 appointment_status,
 reason
FROM appointments;
SELECT * FROM appointments_summary;

CREATE VIEW admission_summary AS
SELECT
admission_id,
patient_id,
doctor_id,
admission_date,
discharge_date,
admission_type,
room_number
FROM admission;
SELECT * FROM admission_summary;

CREATE VIEW medicine_inventory AS
SELECT
    medicine_id,
    medicine_name,
    category,
    unit_price,
    stock_quantity,
    supplier
FROM medicines;
SELECT * FROM medicine_inventory;

CREATE VIEW prescription_details AS
SELECT
    p.prescription_id,
    pt.name AS patient_name,
    d.doctor_name,
    m.medicine_name,
    m.category,
    p.prescription_date,
    p.dosage,
    p.duration_days
FROM prescriptions AS p
JOIN patients AS pt
    ON p.patient_id = pt.patient_id
JOIN doctors AS d
    ON p.doctor_id = d.doctor_id
JOIN medicines AS m
    ON p.medicine_id = m.medicine_id;
SELECT * FROM prescription_details;
    
CREATE VIEW billing_summary AS
SELECT
    b.bill_id,
    b.patient_id,
    p.name AS patient_name,
    b.bill_date,
    b.total_amount,
    b.payment_status,
    b.payment_method
FROM bills AS b
JOIN patients AS p
    ON b.patient_id = p.patient_id;
SELECT * FROM billing_summary;

CREATE VIEW staff_details AS
SELECT
    s.staff_id,
    s.staff_name,
    s.staff_role,
    dp.department_name,
    dp.location,
    s.hire_date,
    s.staff_salary
FROM staff AS s
JOIN department AS dp
    ON s.department_id = dp.department_id;
SELECT * FROM staff_details;