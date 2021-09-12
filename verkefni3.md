1:
Notið select skipun til að skila fjölda undirskóla Tækniskólans
```sql
select heiti from undirskolar
```
---
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
---
Notið like virkjann(operator) til að gera eftirfarandi:                                                                                                                             Birtið alla áfanga sem innihalda '2GO' í áfanganúmerinu.
```sql
select afangaNumer from afangarbrauta
where afangaNumer like '%2GO%';
```


2. Birtið alla áfanga sem byrja á hvaða fjórum bókstöfum sem er en hafa fimmta og sjötta
staf '2B'. Restin af númerinu má svo vera hvað sem er
