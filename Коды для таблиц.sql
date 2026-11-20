CREATE TABLE faculties (
    faculty_id integer NOT NULL,
    faculty_name character varying(255) NOT NULL,
    foundation_date date NOT NULL,
    activity_type character varying(255),
    max_students integer,
    CONSTRAINT faculties_pkey PRIMARY KEY (faculty_id)
);
CREATE TABLE groups (
    group_id integer NOT NULL,
    max_people integer,
    faculty_id integer NOT NULL,
    curator character varying(255),
    group_name character varying(255),
    CONSTRAINT groups_pkey PRIMARY KEY (group_id),
    CONSTRAINT fk_groups_faculty FOREIGN KEY (faculty_id) REFERENCES faculties (faculty_id)
);
CREATE TABLE techfacultygroups (
    faculty_id integer NOT NULL,
    faculty_name character varying(255) NOT NULL,
    activity_type character varying(255),
    max_students integer,
    group_id integer NOT NULL,
    group_name character varying(255),
    max_people integer,
    curator character varying(255),
    CONSTRAINT techfacultygroups_pkey PRIMARY KEY (faculty_id, group_id),
    CONSTRAINT fk_tech_faculty FOREIGN KEY (faculty_id) REFERENCES faculties (faculty_id),
    CONSTRAINT fk_tech_group FOREIGN KEY (group_id) REFERENCES groups (group_id)
);
