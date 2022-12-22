DROP DATABASE IF EXISTS sql_blog;
CREATE DATABASE sql_blog;

USE sql_blog;

CREATE TABLE posts
(
	`post_id` INT (11) NOT NULL auto_increment,
    `title` varchar(255) NOT NULL,
    `body` text NOT NULL,
    `date_published` datetime DEFAULT NULL,
    Primary Key (`post_id`)
) ENGINE = InnoDB auto_increment = 11 default charset= utf8mb4 collate = utf8mb4_0900_ai_ci;

INSERT INTO posts
	(title,body,date_published)

VALUES ('APACHE KAFKA','Apache Kafka is an open-source distributed event streaming platform used by thousands of companies for high-performance data pipelines,
streaming analytics, data integration, and mission-critical applications','2019-01-15');


USE sql_blog;

EXPLAIN Select * from posts
where title like '%react%' OR
		body like '%apache%';
        
CREATE FULLTEXT INDEX idx_title_body ON posts (title,body);

Select *, MATCH(title, body) against('react apache') from posts
where MATCH(title, body) against('react apache');

Select *
where MATCH(title, body) against('react -apache +kafka' IN boolean mode);
