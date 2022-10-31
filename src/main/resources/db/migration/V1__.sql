CREATE TABLE address (
  id INT AUTO_INCREMENT NOT NULL,
   address VARCHAR(255) NULL,
   city VARCHAR(255) NOT NULL,
   state VARCHAR(255) NULL,
   country VARCHAR(255) NULL,
   CONSTRAINT pk_address PRIMARY KEY (id)
);

CREATE TABLE course (
  id INT AUTO_INCREMENT NOT NULL,
   name VARCHAR(255) NOT NULL,
   duration INT NOT NULL,
   price DOUBLE NOT NULL,
   CONSTRAINT pk_course PRIMARY KEY (id)
);

CREATE TABLE passport (
  id INT AUTO_INCREMENT NOT NULL,
   name VARCHAR(255) NOT NULL,
   place VARCHAR(255) NOT NULL,
   number VARCHAR(255) NOT NULL,
   issued_at datetime NOT NULL,
   CONSTRAINT pk_passport PRIMARY KEY (id)
);

CREATE TABLE review (
  id INT AUTO_INCREMENT NOT NULL,
   rating VARCHAR(255) NOT NULL,
   comment VARCHAR(255) NULL,
   course_id INT NOT NULL,
   CONSTRAINT pk_review PRIMARY KEY (id)
);

CREATE TABLE student (
  id INT AUTO_INCREMENT NOT NULL,
   name VARCHAR(255) NOT NULL,
   address_id INT NOT NULL,
   phone_number VARCHAR(255) NOT NULL,
   email VARCHAR(255) NOT NULL,
   passport_id INT NOT NULL,
   CONSTRAINT pk_student PRIMARY KEY (id)
);

CREATE TABLE student_courses (
  courses_id INT NOT NULL,
   student_id INT NOT NULL,
   CONSTRAINT pk_student_courses PRIMARY KEY (courses_id, student_id)
);

ALTER TABLE passport ADD CONSTRAINT uc_passport_number UNIQUE (number);

ALTER TABLE review ADD CONSTRAINT FK_REVIEW_ON_COURSE FOREIGN KEY (course_id) REFERENCES course (id);

ALTER TABLE student ADD CONSTRAINT FK_STUDENT_ON_ADDRESS FOREIGN KEY (address_id) REFERENCES address (id);

ALTER TABLE student ADD CONSTRAINT FK_STUDENT_ON_PASSPORT FOREIGN KEY (passport_id) REFERENCES passport (id);

ALTER TABLE student_courses ADD CONSTRAINT fk_stucou_on_course FOREIGN KEY (courses_id) REFERENCES course (id);

ALTER TABLE student_courses ADD CONSTRAINT fk_stucou_on_student FOREIGN KEY (student_id) REFERENCES student (id);