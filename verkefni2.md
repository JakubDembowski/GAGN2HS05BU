# Liður A
## Skrá eiganda
```sql
create table eigandi
(
    kennitala char(10),
    fornafn varchar(75),
    eftirnafn varchar(75),
    faedingardagur date,
    netfang varchar(75)
    constraint eigandi_PK primary key(kennitala)
);
insert into eigani values('5000', 'Hermann', 'Tang', 20031104, 'Herraking@example.com'),
                         ('6000', 'Andrea', 'Krieg', 19940123, 'KriegPsycho@example.com'),
                         ('7000', 'Casey', 'Edwards', 19870714, 'caseboy@example.com'),
                         ('8000', 'Mike', 'Kerr', 20010502, 'rocksmith11@example.com'),
                         ('9000', 'Mick', 'Gordon', 19980630, 'mickymouse@example.com');
```

## Skrá bíla
```sql
create table bilar
(
	fastanumer char(6),
    tegund varchar(55),
    argerd year,	
    litur varchar(25),
    sjalfskiptur boolean,
    orkugjafi char(7),
    kennitalaEiganda char(4),
    constraint bill_PK primary key(fastanumer),
    constraint bill_eigandi_FK foreign key(kennitalaEiganda) references eigandi(kennitala)
);

insert into bilar values('ABC28', 'Kia Sportage', '2007', 'Blár', true, 'rafmagn', '5000'),
                        ('JB007', 'Toyota Landcruiser 200 VX', '2014', 'Svartur', true, 'diesel', '7000'),
                        ('IS291', 'Subaru Legacy Outback', '2017', 'Grár', true, 'diesel', '9000'),
                        ('MZP99', 'Kia Sportage', '2021', 'Hvítur', true, 'diesel', '8000'),
                        ('TU807', 'Tesla Type S', '2019', 'Hvítur', false, 'rafmagn', '5000'),
                        ('ISL88', 'VolksWagen E230', '1997', 'Grár', false, 'bensín', '6000'),
                        ('ZQL45', 'Volvo S80', '2004', 'Bleikur', true, 'metan', '8000');
```
---
# Liður B
```sql
create table Framleidandi
(
ID int auto_increment primary key,
heiti varchar(75),
land varchar(75)
);
```
---
# Liður C
## Users tafla
---
```sql

create table Users
(
ID int auto_increment,
firstName char(75),
lastName char(75),
dob date,
countryCode char(2),
constraint users_PK primary key(ID)
);
insert into users
values('1','Barbara','Jones','19870724','35'),
	  ('2','James','Hortex','19990117','28'),
      ('3','Maverick','Mambo','20000518','35'),
      ('4','Helena','Juice','19990829','28'),
      ('5','Harrowan','Polo','19680530','81');
```

## Lists tafla
```sql
create table Lists
(
listID int auto_increment,
listName varchar(75),
dateCreated date,
description char(75),
constraint list_PK primary key(listID)
);

insert into lists()
values('1','Listi 1','20090523','Þetta er listi 1'),
	  ('2','List 2','20090621','Þetta er listi 2'),
      ('3','Listi 3','20090511','Þetta er listi 3');
```

## UserLists tafla
```sql
create table UserLists
(
userListID varchar(75),
dateAdded date,
listID int auto_increment,
userID char(2),
primary key(listID)
);
```
