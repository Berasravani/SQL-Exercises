USE cdg_hyd_jfs_058;

CREATE TABLE STUDENTS(
	student_id INT NOT NULL AUTO_INCREMENT,
    admission_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15) ,
    date_of_birth DATE NOT NULL,
    program_name VARCHAR(100) NOT NULL,
    admission_date DATE NOT NULL,
    cgpa DECIMAL(4,2) NOT NULL,
    student_status VARCHAR(15) NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT `pk_student_id` PRIMARY KEY (student_id),
    CONSTRAINT `uq_admission_number` UNIQUE (admission_number),
    CONSTRAINT `uq_email` UNIQUE (email),
    CONSTRAINT `chk_cgpa` CHECK (cgpa BETWEEN 0.00 AND 10.00)
);


INSERT INTO STUDENTS
(admission_number, first_name, last_name, email, phone,
 date_of_birth, program_name, admission_date, cgpa)
VALUES
('ADM000001', 'Demo', 'Student', 'demo.student@example.com',
 NULL, '2002-06-15', 'Artificial Intelligence and Data Science',
 '2022-08-01', 8.12);
 
 SELECT * FROM STUDENTS;
 
 DROP TABLE STUDENTS;