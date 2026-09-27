USE cdg_hyd_jfs_058;

CREATE TABLE PATIENTS (
patient_id INT NOT NULL AUTO_INCREMENT,
patient_number VARCHAR(15) NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
date_of_birth DATE NOT NULL,
biological_sex ENUM('MALE', 'FEMALE') NOT NULL,
blood_group ENUM('A+', 'A-','B+', 'B-','AB+', 'AB-','O+', 'O-'),
phone VARCHAR(15),
email VARCHAR(120),
emergency_contact_name VARCHAR(100),
emergency_contact_phone VARCHAR(15),
allergies TEXT,
patient_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE' ,
registered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT `pk_patient_id` PRIMARY KEY(patient_id),
CONSTRAINT `uk_patient_number` UNIQUE(patient_number)
);

DESC PATIENTS;
DROP TABLE PATIENTS;