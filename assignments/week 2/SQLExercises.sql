create table countries (
	country varchar(50),
	abbreviation char(2),
	capital varchar(50),
	"language" varchar(50),
	populationInMillions decimal,
	region varchar(50),
	currency varchar(50)
);

insert into countries values ('Sweden', 'SE', 'Stockholm', 'Swedish', 10.35, 'Europe', 'Swedish krona');
insert into countries values ('Australia', 'AU', 'Canberra', 'English', 25.69, 'Oceania', 'Australian dollars');
insert into countries values ('Morocco', 'MA', 'Rabat', 'Arabic', 37.46, 'Africa', 'Moroccan dirham');
insert into countries values ('Brazil', 'BR', 'Brasilia', 'Portuguese', 212.6, 'South America', 'Brazilian real');
insert into countries values ('Turkey', 'TR', 'Ankara', 'Turkish', 84.34, 'Asia', 'Turkish lira');
