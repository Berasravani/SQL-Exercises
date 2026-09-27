USE cdg_hyd_jfs_058;

CREATE TABLE products (
product_id INT NOT NULL AUTO_INCREMENT,
sku VARCHAR(20) NOT NULL,
product_name VARCHAR(150) NOT NULL,
category VARCHAR(80) NOT NULL,
brand VARCHAR(80),
unit_price DECIMAL(12,2) NOT NULL,
quantity_in_stock INT NOT NULL DEFAULT 0,
reorder_level INT NOT NULL DEFAULT 5,
manufacture_date DATE,
expiry_date DATE,
product_status VARCHAR(15) NOT NULL DEFAULT 'ACTIVE',
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT `pk_product_id` PRIMARY KEY (product_id),
CONSTRAINT `uk_sku` UNIQUE(sku),
CONSTRAINT `chk_unit_price` CHECK( unit_price > 0),
CONSTRAINT `chk_stock_qantity` CHECK(quantity_in_stock >= 0),
CONSTRAINT `chk_reorder_level` CHECK (reorder_level  >= 0),
CONSTRAINT `chk_expiry_date` CHECK(manufacture_date IS NULL OR expiry_date IS NULL OR expiry_date >= manufacture_date)
);


DROP TABLE products;