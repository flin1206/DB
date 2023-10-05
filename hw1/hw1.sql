CREATE TABLE members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    identity ENUM('teacher', 'student'),
    age INT
);

INSERT INTO members (name, identity, age)
VALUES
    ('John Smith', 'teacher', 35),
    ('Alice Johnson', 'teacher', 28),
    ('Robert Davis', 'teacher', 42),
    ('Emily Wilson', 'student', 19),
    ('Michael Brown', 'student', 20),
    ('Sarah Lee', 'student', 18),
    ('William Anderson', 'student', 21),
    ('Olivia Miller', 'student', 19),
    ('James Garcia', 'student', 20),
    ('Sophia Martinez', 'student', 18),
    ('Benjamin Hernandez', 'student', 22),
    ('Ava Gonzalez', 'student', 19),
    ('Daniel Lopez', 'student', 20),
    ('Mia Perez', 'student', 18),
    ('Logan Moore', 'student', 21),
    ('Grace Taylor', 'student', 20),
    ('Jackson Hall', 'student', 19),
    ('Emma Clark', 'student', 18);

CREATE TABLE teacher_student_relationship (
    student_id INT,
    teacher_id INT,
    FOREIGN KEY (student_id) REFERENCES members (id),
    FOREIGN KEY (teacher_id) REFERENCES members (id)
);

INSERT INTO teacher_student_relationship (student_id, teacher_id)
VALUES
    (4, 1),   -- Emily Wilson (student) is guided by John Smith (teacher)
    (5, 2),   -- Michael Brown (student) is guided by Alice Johnson (teacher)
    (6, 3),   -- Sarah Lee (student) is guided by Robert Davis (teacher)
    (7, 1),   -- William Anderson (student) is guided by John Smith (teacher)
    (8, 2),   -- Olivia Miller (student) is guided by Alice Johnson (teacher)
    (9, 3),   -- James Garcia (student) is guided by Robert Davis (teacher)
    (10, 1),  -- Sophia Martinez (student) is guided by John Smith (teacher)
    (11, 2),  -- Benjamin Hernandez (student) is guided by Alice Johnson (teacher)
    (12, 3),  -- Ava Gonzalez (student) is guided by Robert Davis (teacher)
    (13, 1),  -- Daniel Lopez (student) is guided by John Smith (teacher)
    (14, 2),  -- Mia Perez (student) is guided by Alice Johnson (teacher)
    (15, 3),  -- Logan Moore (student) is guided by Robert Davis (teacher)
    (16, 1),  -- Grace Taylor (student) is guided by John Smith (teacher)
    (17, 2),  -- Jackson Hall (student) is guided by Alice Johnson (teacher)
    (18, 3);  -- Emma Clark (student) is guided by Robert Davis (teacher)
