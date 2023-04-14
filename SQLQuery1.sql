CREATE DATABASE Course

CREATE TABLE Teachers (
    [Id] int primary key Identity(1,1),
    [Name] nvarchar (255),
    [Surname] nvarchar (255),
    [Email] nvarchar (255),
	[Age] int,
	[Salary] decimal
);

INSERT INTO Teachers([Name], [Surname], [Email], [Age], [Salary])
VALUES('Cavid', 'Bashirov', 'cavid@gmail.com', 29, 3500),
     ('Murad', 'Jafarov', 'murad@mail.ru', 19, 2500),
	 ('Musa', 'Afandiyev', 'musa@gmail.com', 19, 2000),
	 ('Resul', 'Huseynov', 'resul@mail.ru', 15, 1650),
	 ('Lala', 'Quliyeva', 'lala@gmail.com', 25, 500)


--Yashi butun muellimlerin orta yashindan boyuk olan muellimlerin siyahisi.
select * from Teachers where [Age] > (select AVG(Age) from Teachers)

--Maashi 1000  ve 3000 araliqinda olan muellimlerin siyahisi.
select * from Teachers where [Salary] between 1000 and 3000

--Emailin sonu mail.ru olan muellimlerin adi ve soyadi
select * from Teachers where SUBSTRING([Email], CHARINDEX('@', [Email]) + 1, LEN([Email]) - CHARINDEX('@', [Email])+1) = 'mail.ru'

--Adi C herfi ile bashlayan muellimlerin siyahisi.
select * from Teachers where LEFT([Name], 1) = 'c'






