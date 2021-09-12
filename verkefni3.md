2:
Veljið aðeins áfanganúmer og önn úr töflunni Afangaframbod. Raðið niðurstöðunum:
a: í stafrófsröð eftir áfanganúmerum
b: eftir önnum þannig að seinasta önnin komi fyrst('öfug röð')

a:
```sql
select afangaNumer, onnAfanga from afangarbrauta
order by afangaNumer;
```
b: 
select afangaNumer, onnAfanga from afangarbrauta
order by onnAfanga;
