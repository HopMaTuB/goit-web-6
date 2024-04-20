-- Таблиця студентів
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    group_id INTEGER NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(id)
);

-- Таблиця груп
CREATE TABLE groups (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Таблиця викладачів
CREATE TABLE teachers (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Таблиця предметів
CREATE TABLE subjects (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    teacher_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

-- Таблиця оцінок
CREATE TABLE grades (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    subject_id INTEGER,
    grade INTEGER,
    date TEXT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
);
