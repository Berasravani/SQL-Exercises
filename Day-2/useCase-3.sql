use cdg_hyd_jfs_058;

create table customers (
customer_id int NOT NULL AUTO_INCREMENT,
customer_code varchar(12) NOT NULL,
first_name varchar(50) 	NOT NULL,
last_name varchar(50) NOT NULL,
email varchar(120) NOT NULL,
phone varchar(15),
date_of_birth DATE,
city varchar(80) NOT NULL,
state varchar(80) NOT NULL,
postal_code varchar(12) NOT NULL,
customer_type varchar(15) NOT NULL DEFAULT 'REGULAR',
credit_limit decimal(12,2) NOT NULL DEFAULT 0.00,
is_active boolean NOT NULL DEFAULT TRUE,
registered_at timestamp NOT NULL default current_timestamp,
constraint `pk_customer_id` PRIMARY KEY (customer_id),
constraint `uk_customer_code` UNIQUE(customer_code),
constraint `uk_email` UNIQUE(email),
constraint `uk_phone` UNIQUE(phone),
constraint `chk_creditlimit` CHECK(credit_limit >=0)
);
   
describe customers;
Drop table customers;