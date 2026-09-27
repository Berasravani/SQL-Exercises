USE cdg_hyd_jfs_058;

CREATE TABLE VEHICLES (
vehicle_id INT NOT NULL,
registration_number VARCHAR(20) NOT NULL,
owner_name VARCHAR(120),
manufacturer VARCHAR(80),
model VARCHAR(80),
vehicle_type VARCHAR(20),
fuel_type VARCHAR(20),
manufacture_year YEAR,
purchase_date DATE,
color VARCHAR(40),
odometer_km INT NOT NULL DEFAULT 0,
insurance_expiry DATE,
vehicle_status VARCHAR(20) DEFAULT 'ACTIVE',
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT `pk_vehicle_id` PRIMARY KEY(vehicle_id),
CONSTRAINT `uk_reg_num` UNIQUE(registration_number),
CONSTRAINT `chk_odometer_km` CHECK(odometer_km >= 0),
CONSTRAINT `chk_vehicle_type` CHECK(vehicle_type IN('CAR','BIKE','TRUCK','BUS')),
CONSTRAINT `chk_fuel_type` CHECK(fuel_type IN('PETROL', 'DIESEL','ELECTRIC','CNG')),
CONSTRAINT `chk_vehicle_status` CHECK(vehicle_status IN ('ACTIVE','INACTIVE','SOLD'))
);

ALTER TABLE VEHICLES MODIFY vehicle_id INT NOT NULL AUTO_INCREMENT;
ALTER TABLE VEHICLES AUTO_INCREMENT = 201;

DESCRIBE VEHICLES;
DROP TABLE VEHICLES;

INSERT INTO VEHICLES
(registration_number, owner_name, manufacturer, model,
 vehicle_type, fuel_type, manufacture_year, purchase_date,
 color, odometer_km, insurance_expiry, vehicle_status)
VALUES
('AP09AB1234', 'Karthik', 'Toyota', 'Innova',
 'CAR', 'PETROL', 2024, '2024-06-15',
 'White', 15000, '2027-06-14', 'ACTIVE');
 
 SELECT * FROM VEHICLES;