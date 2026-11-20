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
    CONSTRAINT groups_pkey PRIMARY KEY (group_id)
);
CREATE TABLE techfacultygroups (
    faculty_id integer NOT NULL,
    faculty_name character varying(255) NOT NULL,
    activity_type character varying(255),
    max_students integer,
    group_id integer NOT NULL,
    group_name character varying(255),
    max_people integer,
    curator character varying(255)
);
