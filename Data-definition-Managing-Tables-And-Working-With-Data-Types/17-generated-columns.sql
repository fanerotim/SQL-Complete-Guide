DROP TABLE books;

CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    author VARCHAR(30),
    title VARCHAR(50),
    author_title VARCHAR(100) GENERATED ALWAYS AS (CONCAT(author, ' ', title))
);

INSERT INTO books (author, title) 
VALUES(
    'I.Welsh',
    'Trainspotting'
);