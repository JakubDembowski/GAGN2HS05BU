1:
Notið select skipun til að skila fjölda undirskóla Tækniskólans
```sql
select heiti from undirskolar
```

2:
Veljið aðeins áfanganúmer og önn úr töflunni Afangaframbod. Raðið niðurstöðunum:
a: í stafrófsröð eftir áfanganúmerum
b: eftir önnum þannig að seinasta önnin komi fyrst('öfug röð')

a:
```sql
select afangaNumer, onnAfanga from afangaframbod
order by afangaNumer;
```
b: 
```sql
select afangaNumer, onnAfanga from afangaframbod
order by onnAfanga;
```
