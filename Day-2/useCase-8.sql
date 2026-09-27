USE cdg_hyd_jfs_058;

CREATE TABLE HOTEL_ROOMS (
room_id INT NOT NULL AUTO_INCREMENT,
room_number VARCHAR(20) NOT NULL,
room_type VARCHAR(20) NOT NULL,
floor_number SMALLINT NOT NULL,
bed_count TINYINT NOT NULL,
max_occupancy TINYINT NOT NULL,
price_per_night DECIMAL(10,2) NOT NULL,
availability_status VARCHAR(20) NOT NULL DEFAULT 'AVAILABLE',
has_air_conditioning BOOLEAN NOT NULL DEFAULT TRUE,
smoking_allowed BOOLEAN NOT NULL DEFAULT FALSE,
notes VARCHAR(255),
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
CONSTRAINT pk_room_id PRIMARY KEY (room_id),
CONSTRAINT uk_room_num UNIQUE (room_number),
CONSTRAINT chk_bed_count CHECK (bed_count >= 1),
CONSTRAINT chk_max_occupancy CHECK (max_occupancy >= 1),
CONSTRAINT chk_price_per_night CHECK (price_per_night > 0)
);

ALTER TABLE HOTEL_ROOMS
AUTO_INCREMENT = 101;

INSERT INTO HOTEL_ROOMS
(room_number, room_type, floor_number, bed_count,
 max_occupancy, price_per_night,
 availability_status, has_air_conditioning,
 smoking_allowed, notes)
VALUES
('101', 'DELUXE', 1, 2, 4, 3500.00,
 'AVAILABLE', TRUE, FALSE, 'City view room');
 
 SELECT * FROM HOTEL_ROOMS;
 
 DROP TABLE HOTEL_ROOMS;