use cdg_hyd_jfs_058;

CREATE TABLE BANK_ACCOUNTS (
account_id INT NOT NULL,
account_number CHAR(12) NOT NULL,
account_holder_name VARCHAR(120) NOT NULL,
account_type VARCHAR(20) NOT NULL,
balance DECIMAL(5,2) DEFAULT 0.00,
currency_code CHAR(3) NOT NULL DEFAULT 'INR',
branch_name VARCHAR(100),
opened_date DATE,
interest_rate DECIMAL(5,2) NOT NULL DEFAULT 0.00,
overdraft_limit DECIMAL(12,2) NOT NULL DEFAULT 0.00,
account_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT `pk_account_id` PRIMARY KEY(account_id),
CONSTRAINT `uk_account_number` UNIQUE(account_number),
CONSTRAINT `chk_account_number` CHECK(char_length(account_number) = 12),
CONSTRAINT `chk_interest_rate` CHECK(interest_rate BETWEEN 0.00 and 100.00)
);

ALTER TABLE BANK_ACCOUNTS AUTO_INCREMENT = 1000001;

DROP TABLE BANK_ACCOUNTS;