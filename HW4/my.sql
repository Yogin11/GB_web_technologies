/*
Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.
Необходимо добавить 5-10 одногруппников в данную таблицу.
Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), которые живут в Москве и их возраст находится в диапазоне [18, 30) лет. 
Примечание:
Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", то есть диапазон (7, 9] означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". Такой синтаксис нельзя использовать в sql, вам нужно найти решение, как такое условие можно записать в sql по-другому.
Для проверок работы своего скрипта можете использовать свою базу данных, либо используйте сайт: https://onecompiler.com/mysql
*/
CREATE TABLE classmates (
  Id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  address TEXT NOT NULL
);

INSERT INTO classmates (name,age,address) VALUES ('Сластихин Максим',30,'Москва, ул.Тушинская,1');
INSERT INTO classmates (name,age,address) VALUES ('Варбузова Анна',26,'Москва, ул.Авиационная,15');
INSERT INTO classmates (name,age,address) VALUES ('Закуракин Дмитрий',30,'Питер, ул.Свободы,89');
INSERT INTO classmates (name,age,address) VALUES ('Самолетов Максим',18,'Москва, ул.Досфлота,5');
INSERT INTO classmates (name,age,address) VALUES ('Мануйлова Наталья',35,'Волгоград, ул.Авангардная,21');
INSERT INTO classmates (name,age,address) VALUES ('Петухов Сергей',17,'Красногорск, Алтуфьевское шоссе,89');
INSERT INTO classmates (name,age,address) VALUES ('Карлов Виталий',21,'Волоколамск, ул.Новгородская,8');
INSERT INTO classmates (name,age,address) VALUES ('Майборода Сергей',29,'Москва, ул.Новгородская,8');
INSERT INTO classmates (name,age,address) VALUES ('Галактионов Дмитрий ',18,'Москва, ул.Нижегородская,8');


SELECT * FROM classmates;
SELECT name FROM classmates WHERE address LIKE 'Москва%' and age >= 18 and age < 30;
