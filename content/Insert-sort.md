---
share_link: https://share.note.sx/78oawzsy#q8WxY8hxWU3YZvssmdhWgr+DaOXos+BkpKUnQTnVoBI
share_updated: 2025-07-04T11:25:17+02:00
---
#uni/algo 

>Bei vorsortierten Arrays/Listen effizient

Big O Notation
Best Case: O(n) → feld schon sortiert

---

# Bewertung
**Vorteile**
- [[Stabilität in Sortieralgorithmen|Stabil]]
- Kein Zusätzlicher Speicher nötig
- Gut für kleine Arrays

**Nachteile**
- Worst Case: O(n^2) →  Feld absteigend
- Viele Schreiboperationen

---

# Ablauf
**Python Code**
```python
def insertionsort(arr):
	n=len(arr)
	if n <= 1:
		return
	for i in range(1,n)
		key=arr[i]
		j=i-1
		while j >= 0 and key < arr[j]:
			arr[j+1] = arr[j]
			j -= 1
		arr[j+1] = key
	return arr
```







