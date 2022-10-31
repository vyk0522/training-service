INSERT INTO address(city, address, state, country) VALUES ('Mandya', '5th Cross', 'Karnataka', 'India');
INSERT INTO address(city, address, state, country) VALUES ('Mysuru', '5th Cross', 'Karnataka', 'India');
INSERT INTO address(city, address, state, country) VALUES ('Bengaluru', '5th Cross', 'Karnataka', 'India');

INSERT INTO passport(name, place, number, issued_at) VALUES('Vivek S', 'Mandya', 'A001', NOW());
INSERT INTO passport(name, place, number, issued_at) VALUES('Tejas S', 'Bengaluru', 'A002', NOW());
INSERT INTO passport(name, place, number, issued_at) VALUES('Vinay S', 'Mandya', 'A003', NOW());

INSERT INTO student(name, address_id, phone_number, email, passport_id) VALUES('Vivek S', 1, '8971', 'vivek@gmail.com', 1);
INSERT INTO student(name, address_id, phone_number, email, passport_id) VALUES('Tejas S', 3, '9999', 'tej@gmail.com', 2);
INSERT INTO student(name, address_id, phone_number, email, passport_id) VALUES('Vinay S', 2, '8888', 'vinay@gmail.com', 3);

INSERT INTO course(name, duration, price) VALUES('Java', 5, 1000);
INSERT INTO course(name, duration, price) VALUES('Spring Boot', 3, 700);
INSERT INTO course(name, duration, price) VALUES('Micro Services', 2, 500);

INSERT INTO review(rating, comment, course_id) VALUES('5', 'Awesome', 1);
INSERT INTO review(rating, comment, course_id) VALUES('4', 'Good', 1);
INSERT INTO review(rating, comment, course_id) VALUES('4', 'Nice', 2);
INSERT INTO review(rating, comment, course_id) VALUES('5', 'Awesome', 3);
INSERT INTO review(rating, comment, course_id) VALUES('3', 'Average', 2);

INSERT INTO student_courses(courses_id, student_id) VALUES(1, 1);
INSERT INTO student_courses(courses_id, student_id) VALUES(2, 1);
INSERT INTO student_courses(courses_id, student_id) VALUES(3, 1);
INSERT INTO student_courses(courses_id, student_id) VALUES(1, 2);
INSERT INTO student_courses(courses_id, student_id) VALUES(2, 2);
INSERT INTO student_courses(courses_id, student_id) VALUES(1, 3);

