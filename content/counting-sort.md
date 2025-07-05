---
share_link: https://share.note.sx/ey4a2wsm#WvPyU0zNTLm57n/ONz4vauiLCEGuR8zimhOZWjMFbUg
share_updated: 2025-07-04T11:25:05+02:00
---
#uni/algo
>Zählt wie oft jede Zahl vorkommt und baut daraus das array wieder sortiert zusammen
>**Komplexität**
>**O(n+k)** 
>**n** = Anzahl Elemente
>**k** = Maximalwert im Array

---

# Bewertung
**Bester Einsatz**
- Wenn du viele Daten im **_kleinen Bereich_** hast (z.B. 0–100)
- Dinge wie **Noten, Alter, IDs, Hashes**
- Wenn es nicht auf RAM ankommt

**Vorteile**
- [[Stabilität in Sortieralgorithmen|Stabil]]

**Nachteile**
- Nur für nicht-negative Zahlen
- Hoher Speicherverbrauch
- Nicht ==in-place → Extra Speicher für das Count Array==

---

# Ablauf
**Code Beispiel**
```python
def countingsort(arr): 
	max_val = max(arr)
	count = [0] * (max_val +  1)
	
	for num in arr:
		count[num] += 1

	i = 0
	for num in range(len(count)):
		for _ in range(count[num]):
			arr[i] = num
			i += 1
	return arr

```
