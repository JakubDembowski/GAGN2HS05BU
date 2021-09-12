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

a: í stafrófsröð eftir áfanganúmerum
```sql
select afangaNumer, onnAfanga from afangaframbod
order by afangaNumer;
```
b: eftir önnum þannig að seinasta önnin komi fyrst('öfug röð')
```sql
select afangaNumer, onnAfanga from afangaframbod
order by onnAfanga;
```
---
3:
Notið like virkjann(operator) til að gera eftirfarandi:   

a: Birtið alla áfanga sem innihalda '2GO' í áfanganúmerinu.
```sql
select afangaNumer from afangarbrauta
where afangaNumer like '%2GO%';
```
b: Birtið alla áfanga sem byrja á hvaða fjórum bókstöfum sem er en hafa fimmta og sjötta
staf '2B'. Restin af númerinu má svo vera hvað sem er

```sql
select afangaNumer from afangarbrauta
where afangaNumer like '%____2B%';
```
---
4:
Svarið eftirfarandi með SQL fyrirspurn:
Eru einhver áfanganúmer sem byrja á bókstafnum F en heiti áfangans byrjar ekki á F?
  * Nei... Eina áfanganúmer sem byrjar á F er Forritun og öll heiti byrja á F.
---
6:
veljið allar upplýsingar um alla áfanga úr Afangatöflunni nema eftirfarandi(afangaNumer):
```sql
select * from afangar
WHERE afanganumer NOT LIKE '%DANS2BM05AT, ÍÞRÓ1GH02AT, MENL1AL05AT, STÆR4HT05FT% ';
```
