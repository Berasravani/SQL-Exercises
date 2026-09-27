use cdg_hyd_jfs_058;

CREATE TABLE BOOKS(
book_id INT NOT NULL AUTO_INCREMENT,
isbn CHAR(13) NOT NULL,
title VARCHAR(200) NOT NULL,
author_name VARCHAR(120) NOT NULL,
genre VARCHAR(60) NOT NULL,
publisher VARCHAR(120),
publication_year SMALLINT NOT NULL,
page_count SMALLINT NOT NULL,
book_format VARCHAR(20) NOT NULL,
price  DECIMAL(10,2) NOT NULL,
copies_available INT NOT NULL,
language VARCHAR(40) NOT NULL DEFAULT 'ENGLISH',
added_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT `pk_book_id` PRIMARY KEY(book_id),
CONSTRAINT `uk_isbn` UNIQUE(isbn),
CONSTRAINT `uk_check_isbn` CHECK(char_length(isbn) = 13),
CONSTRAINT `chk_publication_year` CHECK(publication_year BETWEEN 1000 AND 2100),
CONSTRAINT `chk_page_count` CHECK(page_count > 0),
CONSTRAINT `chk_price` CHECK(price >=0),
constraint `chk_copies` CHECK(copies_available >= 0)
);

DESCRIBE books;

DROP TABLE books;
