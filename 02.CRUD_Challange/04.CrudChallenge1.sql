CREATE DATABASE shirts_db;

USE shirts_db;

CREATE TABLE shirts(
	shirt_id INT PRIMARY KEY AUTO_INCREMENT,
	article VARCHAR(30),
    color VARCHAR(30),
    shirt_size VARCHAR(5),
    last_worn SMALLINT);
    
INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES('t-shirt', 'white', 'S', 10),
	('t-shirt', 'green', 'S', 200),
	('polo shirt', 'black', 'M', 10),
	('tank top', 'blue', 'S', 50),
	('t-shirt', 'pink', 'S', 0),
	('polo shirt', 'red', 'M', 5),
	('tank top', 'white', 'S', 200),
	('tank top', 'blue', 'M', 15);

INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES ('polo_shirt', 'purple', 'M', 50);

SELECT article, color FROM shirts;

SELECT article, color, shirt_size, last_worn from shirts
WHERE shirt_size='M';

SET SQL_SAFE_UPDATES = 0;

UPDATE  shirts
SET shirt_size='L'
WHERE article='polo_shirt';

UPDATE shirts
SET last_worn=0
WHERE last_worn=15;

UPDATE shirts
SET shirt_size='XS', color='off white'
WHERE color='white';

DELETE FROM shirts
WHERE last_worn=200;

DELETE FROM shirts
WHERE article='tank top';

DELETE FROM shirts;

SET SQL_SAFE_UPDATES = 1;

DROP TABLE shirts;

