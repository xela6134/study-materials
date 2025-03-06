
create table Student (
    zID     varchar(8)      primary key,
    name    varchar(40)     not null,
    dob     date
);

create table Course (
    courseID    varchar(8)  primary key,
    title       varchar(40) not null,
    credits     integer     check (credits > 0)
);

create table Enrolled (
    asd         varchar(8),
    courseID    varchar(8),
    grade       integer not null,
    foreign key asd references Student(zID),
    foreign key courseID references Course(courseID)
);

--------------------------------------------------------------------------------------------

create table Author (
    authorID    integer     primary key,
    name        varchar(40) not null,
    dob         date,
    nationality varchar(40)
);

create table Book (
    ISBN        integer       primary key,
    title       varchar(40)   not null,
    price       numeric(10,2) not null
    written_by  integer,
    foreign key written_by references Author(authorID)
);

--------------------------------------------------------------------------------------------

create table Person (
    driverNo    integer     primary key,
    name        varchar(40) not null,
    dob         date        not null
);

create table UnswAccount (
    zID         varchar(8)  primary key,
    major       varchar(40) not null,
    minor       varchar(40),
    driverNo    integer,
    foreign key driverNo references Person(driverNo)
);
