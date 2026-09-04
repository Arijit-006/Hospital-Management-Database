CREATE DATABASE hospital_management;
USE hospital_management;

-- 1. PATIENTS TABLE
CREATE TABLE patients(
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    gender ENUM('Male', 'Female', 'Others'),
    phone_num VARCHAR(20),
    date_of_birth DATE,
    city VARCHAR(100),
    registration_date DATE
);


-- 2. DEPARTMENT TABLE
CREATE TABLE department(
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);


-- 3. DOCTORS TABLE
CREATE TABLE doctors(
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    doctor_name VARCHAR(100),
    specialization VARCHAR(100),
    doctor_phone VARCHAR(20),
    hire_date DATE,
    department_id INT,

    FOREIGN KEY (department_id) 
        REFERENCES department(department_id)
);


-- 4. APPOINTMENTS TABLE
CREATE TABLE appointments(
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    appointment_status VARCHAR(100),
    reason VARCHAR(100),

    FOREIGN KEY (patient_id) 
        REFERENCES patients(patient_id),

    FOREIGN KEY (doctor_id) 
        REFERENCES doctors(doctor_id)
);


-- 5. ADMISSION TABLE
CREATE TABLE admission(
    admission_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    admission_date DATE,
    discharge_date DATE,
    admission_type VARCHAR(100),
    room_number VARCHAR(100),

    FOREIGN KEY (patient_id) 
        REFERENCES patients(patient_id),

    FOREIGN KEY (doctor_id) 
        REFERENCES doctors(doctor_id)
);


-- 6. MEDICINES TABLE
CREATE TABLE medicines(
    medicine_id INT AUTO_INCREMENT PRIMARY KEY,
    medicine_name VARCHAR(100),
    category VARCHAR(100),
    unit_price DECIMAL(10,2),
    stock_quantity INT,
    supplier VARCHAR(100)
);


-- 7. PRESCRIPTIONS TABLE
CREATE TABLE prescriptions(
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    medicine_id INT,
    prescription_date DATE,
    dosage VARCHAR(100),
    duration_days INT,

    FOREIGN KEY (patient_id) 
        REFERENCES patients(patient_id),

    FOREIGN KEY (doctor_id) 
        REFERENCES doctors(doctor_id),

    FOREIGN KEY (medicine_id) 
        REFERENCES medicines(medicine_id)
);


-- 8. BILLS TABLE
CREATE TABLE bills(
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    bill_date DATE,
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(100),
    payment_method VARCHAR(50),

    FOREIGN KEY (patient_id) 
        REFERENCES patients(patient_id)
);


-- 9. STAFF TABLE
CREATE TABLE staff(
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_name VARCHAR(100),
    staff_role VARCHAR(50),
    department_id INT,
    hire_date DATE,
    staff_salary DECIMAL(10,2),

    FOREIGN KEY (department_id) 
        REFERENCES department(department_id)
);