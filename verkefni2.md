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
insert into bilar values('5000', 'Hermann', 'Tang', 20031104, 'Herraking@example.com'),
                        ('6000', 'Andrea', 'Krieg', 19940123, 'KriegPsycho@example.com'),
                        ('7000', 'Casey', 'Edwards', 19870714, 'caseboy@example.com'),
                        ('8000', 'Mike', 'Kerr', 20010502, 'rocksmith11@example.com'),
                        ('9000', 'Mick', 'Gordon', 19980630, 'mickymouse@example.com');
```
