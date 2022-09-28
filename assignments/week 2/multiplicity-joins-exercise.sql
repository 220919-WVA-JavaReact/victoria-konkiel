create table students (
	stu_id serial primary key,
	"first" varchar(25),
	"last" varchar(25),
	phone int,
	email varchar(25)
);

create table teachers (
	teach_id serial primary key,
	"first" varchar(25),
	"last" varchar(25),
	phone int,
	email varchar(25)
);

create table topics (
	top_id serial primary key,
	topic varchar(25)
);

create table courses (
	cour_num serial primary key,
	title varchar(25),
	duration varchar(25),
	grade_level int,
	instructor int references teachers unique
);

create table student_courses (
	stu_id int references students,
	cour_num int references courses
);

create table course_topics (
	cour_num int references courses,
	top_id int references topics
);

insert into students ("first", "last", phone, email)
values
	('Wanda', 'Maximoff', 5555555, 'wmax@example.com'),
	('Jane', 'Foster', 5555556, 'jfost@ecample.com'),
	('Natasha', 'Romanoff', 5555557, 'nrom@example.com'),
	('Shuri', null, 5555558, 'shuri@example.com'),
	('Carol', 'Danvers', 5555559, 'cdan@example.com');

insert into teachers ("first", "last", phone, email)
values
	('Leslie', 'Knope', 5555551, 'lknope@example.com'),
	('April', 'Ludgate', 5555552, 'alud@example.com'),
	('Donna', 'Meagle', 5555553, 'dmeag@example.com');

insert into courses (title, duration, grade_level, instructor)
values
	('gym', '1 semester', 12, 1),
	('calculus', '2 semesters', 11, 2),
	('physics', '2 semesters', 10, 3);

insert into topics (topic)
values
	('math'),
	('physical education'),
	('science')

insert into student_courses
values
	(1, 1),
	(4, 1),
	(4, 2),
	(1, 3),
	(2, 2),
	(3, 2),
	(5, 1),
	(3, 3);

insert into course_topics
values
	(1, 2),
	(2, 1),
	(3, 1),
	(3, 3);
