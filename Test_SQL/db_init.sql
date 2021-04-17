drop table if exists students;
drop table if exists laboratory_works;
drop table if exists academic_performance;
drop table if exists group_student;
drop table if exists groups;

CREATE TABLE students(
		id INTEGER PRIMARY KEY, 
		surname TEXT NOT NULL, 
		name TEXT NOT NULL,
		lastname text
);

INSERT INTO students VALUES 
(1, 'Алексеев', 'Алексей',null),
(2, 'Ашрятова', 'Римма',null),
(3, 'Борисов', 'Александр',null),
(4, 'Гарин', 'Максим',null),
(5, 'Головатюк', 'Анастасия',null),
(6, 'Горбунов', 'Андрей',null),
(7, 'Гуськов', 'Артем',null),
(8, 'Дворянинова', 'Дарья',null),
(9, 'Еделева', 'Юлия',null),
(10, 'Зевайкин', 'Андрей',null),
(11, 'Исоков', 'Асадбек',null),
(12, 'Казакова', 'Ирина',null),
(13, 'Квашнин', 'Кирилл',null),
(14, 'Кирдюшкин', 'Данила',null),
(15, 'Козина', 'Светлана',null),
(16, 'Козлова', 'Екатерина',null),
(17, 'Котков', 'Сергей',null),
(18, 'Ландышев', 'Александр',null),
(19, 'Логинов', 'Виталий',null),
(20, 'Малов', 'Кирилл',null),
(21, 'Манин', 'Данила',null),
(22, 'Маслова', 'Елена',null),
(23, 'Паршин', 'Артем',null),
(24, 'Пузин', 'Владислав',null),
(25, 'Сайфетдинов', 'Салават',null),
(26, 'Симатов', 'Вадим',null),
(27,'Александров','К','В'),
(28,'Антонов','К','Ю'),
(29,'Арянов','В','А'),
(30,'Ахунзада','Г','А'),
(31,'Балашов','В','В'),
(32,'Бикмаев','Р','Р'),
(33,'Булатова','Г','Р'),
(34,'Гераськин','В','М'),
(35,'Гурьков','Н','Д'),
(36,'Дурнаев','Н','С'),
(37,'Егоров','О','А'),
(38,'Кокулов','А','Ф'),
(39,'Кудашкин','А','Е'),
(40,'Лихорадов','И','И'),
(41,'Логинов','А','Д'),
(42,'Ломайкин','А','С'),
(43,'Макушев','В','А'),
(44,'Макшев','Н','И'),
(45,'Матвеев','М','Д'),
(46,'Парамонов','О','Н'),
(47,'Плаксин','Д','В'),
(48,'Сазонов','А','В'),
(49,'Седики','Х','Ю'),
(50,'Сюсин','А','В'),
(51,'Тростин','С','А'),
(52,'Шабарин','И','А');

create table laboratory_works(
		id integer primary key, 
		id_lab integer not null,
	    group_id integer not null,
		deadline text not null,
		max_mark integer not null,
		FOREIGN KEY (group_id) REFERENCES groups(group_) ON DELETE CASCADE
);

insert into laboratory_works values
(1,1,303, '06.02.2021', 5),
(2,2,303, '20.02.2021', 5),
(3,3,303, '27.02.2021', 5),
(4,4,303, '13.03.2021', 6),
(5,5,303, '27.03.2021', 6),
(6,6,303, '10.04.2021', 8),
(7,7,303, '24.04.2021', 8),
(8,8,303, '01.05.2021', 6),
(9,9,303, '22.05.2021', 8),
(10,10,303, '05.06.2021', 7),
(11,1,402, '06.02.2021', 8),
(12,2,402, '13.02.2021', 8),
(13,3,402, '27.02.2021', 9),
(14,4,402, '13.03.2021', 12),
(15,5,402, '27.03.2021', 12),
(16,6,402, '10.04.2021', 12),
(17,7,402, '17.04.2021', 9);

create table academic_performance( 
		student_id integer,
		lab_id integer,
		mark integer,
		report_date text,
		FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
		FOREIGN KEY (lab_id) REFERENCES aboratory_works(id) ON DELETE CASCADE
);

insert into academic_performance values
(2,1,5,'30.01.2021'),
(2,2,4.9,'19.02.2021'),
(2,3,4.9,'26.02.2021'),
(2,4,6,'05.03.2021'),
(2,5,6,'26.03.2021'),
(2,6,7.7,'10.04.2021'),
(3,1,5,'06.02.2021'),
(3,2,5,'17.02.2021'),
(3,3,4.5,'27.02.2021'),
(3,4,5.7,'13.03.2021'),
(3,5,6,'27.03.2021'),
(4,1,4.8,'04.02.2021'),
(4,2,4.8,'19.02.2021'),
(4,3,4,'04.03.2021'),
(4,4,5.7,'10.03.2021'),
(4,5,5.7,'27.03.2021'),
(5,1,4.8,'02.02.2021');
CREATE TABLE group_student(
		student_id INTEGER,
		group_ integer not null,
		FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,	
		FOREIGN KEY (group_) REFERENCES groups(group_) ON DELETE CASCADE
);

insert into group_student values
(1,303),
(2,303),
(3,303),
(4,303),
(5,303),
(6,303),
(7,303),
(8,303),
(9,303),
(10,303),
(11,303),
(12,303),
(13,303),
(14,303),
(15,303),
(16,303),
(17,303),
(18,303),
(19,303),
(20,303),
(21,303),
(22,303),
(23,303),
(24,303),
(25,303),
(26,303),
(27,402),
(28,402),
(29,402),
(30,402),
(31,402),
(32,402),
(33,402),
(34,402),
(35,402),
(36,402),
(37,402),
(38,402),
(39,402),
(40,402),
(41,402),
(42,402),
(43,402),
(44,402),
(45,402),
(46,402),
(47,402),
(48,402),
(49,402),
(50,402),
(51,402),
(52,402);

CREATE TABLE groups(
		group_ integer primary key	
);

insert into groups values (303),(402);

create table registration(
		data_time_reg text,
		group_ integer,
		student text
		
);

insert int registration values
('13.02.2021 11:49:09',	402,'Тростин С.А.'),
('13.02.2021 12:59:53',	402,'Парамонов Олег Николаевич'),
('13.02.2021 13:00:30',	402,'Булатова Г.Р.'),
('13.02.2021 13:00:39',	402,'Akhunzada Ghulam Abbas'),
('13.02.2021 13:00:43',	402,'Кудашкин А.Е.'),
('13.02.2021 13:00:46',	402,'Лихорадов И.И.'),
('13.02.2021 13:02:28',	402,'Гераськин В. М.'),
('13.02.2021 13:03:01',	402,'Дурнаев Н.С.'),
('13.02.2021 13:03:36',	402,'Балашов В.В.'),
('13.02.2021 13:07:41',	402,'Шабарин Игорь Александрович'),
('13.02.2021 13:49:31',	402,'Akhunzada Ghulam Abbas'),
('19.02.2021 18:00:53',	402,'Тростин С.А.'),
('19.02.2021 18:00:57',	402,'Кудашкин А.Е.'),
('19.02.2021 18:00:57',	402,'Александров К.В.'),
('19.02.2021 18:01:03',	402,'Парамонов Олег Николаевич'),
('19.02.2021 18:01:07',	402,'Сазонов Д. А.'),
('19.02.2021 18:01:15',	402,'Булатова Г.Р.'),
('19.02.2021 18:03:02',	402,'Балашов В.В.'),
('19.02.2021 18:03:32',	402,'Плаксин Д.В.'),
('19.02.2021 18:26:49',	402,'Арянов В.А.'),
('19.02.2021 18:28:06',	402,'Макшев Н.И.'),
('19.02.2021 19:33:20',	402,'Матвеев М.Д.'),
('20.02.2021 14:01:34',	402,'Арянов В.А.'),
('20.02.2021 14:02:21',	402,'Сазонов Д. А.'),
('20.02.2021 14:03:25',	402,'Антонов К. Ю'),
('20.02.2021 14:03:28',	402,'Александров К.В.'),
('20.02.2021 14:04:31',	402,'Гурьков Н.Д.'),
('20.02.2021 14:05:15,'	402,'Макшев Н.И.'),
('20.02.2021 14:07:07',	402,'Плаксин Д.В.'),
('20.02.2021 14:07:10',	402,'Седики Худжа Юсуф'),
('20.02.2021 16:28:18',	402,'Матвеев М.Д.'),
('22.02.2021 9:01:57',	402,'Седики Худжа Юсуф'),
('22.02.2021 10:58:36',	402,'Седики Худжа Юсуф'),
('22.02.2021 12:44:34',	402,'Седики Худжа Юсуф'),
('26.02.2021 18:00:48',	402,'Седики Худжа Юсуф'),
('26.02.2021 18:01:09,'	402,'Гурьков Н.Д.'),
('26.02.2021 18:01:46',	402,'Александров К.В.'),
('26.02.2021 18:01:59',	402,'Тростин С.А.'),
('26.02.2021 18:02:09',	402,'Антонов К. Ю'),
('26.02.2021 18:02:10',	402,'Булатова Г.Р.'),
('26.02.2021 18:02:28',	402,'Плаксин Д.В.'),
('26.02.2021 18:02:29',	402,'Балашов В. В.'),
('26.02.2021 18:02:50',	402,'Кудашкин А.Е.'),
('26.02.2021 18:02:56', 402,'Макшев Н.И.'),
('26.02.2021 18:02:57',	402,'Арянов В.А.'),
('26.02.2021 18:03:01',	402,'Лихорадов И.И.'),
('26.02.2021 18:04:56',	402,'Ломайкин А.С.'),
('26.02.2021 18:05:22',	402,'Гераськин В.М.'),
('26.02.2021 18:12:48',	402,'Парамонов Олег Николаевич'),
('26.02.2021 18:33:51',	402,'Седики Худжа Юсуф'),
('27.02.2021 13:00:56',	402,'Булатова Г.Р.'),
('27.02.2021 13:01:18',	402,'Парамонов Олег Николаевич'),
('27.02.2021 13:01:39',	402,'Гераськин В.М.'),
('27.02.2021 13:11:20',	402,'Балашов В.В.'),
('27.02.2021 13:29:15',	402,'Тростин С.А.'),
('27.02.2021 13:29:29',	402,'Гераськин В. М.'),
('27.02.2021 13:29:48',	402,'Шабарин И.А'),
('27.02.2021 13:30:17',	402,'Лихорадов И.И.'),
('27.02.2021 14:28:50',	402,'Седики Худжа Юсуф'),
('27.02.2021 18:51:46',	402,'Ахунзада Г.А');


