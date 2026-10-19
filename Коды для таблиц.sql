CREATE TABLE fakultety (
    faculty_id INTEGER PRIMARY KEY,
    faculty_name TEXT NOT NULL,
    found_date DATE NOT NULL,
    line_of_activity TEXT NOT NULL,
    stud_max INTEGER NOT NULL
);

CREATE TABLE groups (
    group_id INTEGER PRIMARY KEY,
    people_max INTEGER NOT NULL,
    faculty_id INTEGER NOT NULL,
    curator TEXT NOT NULL
);
