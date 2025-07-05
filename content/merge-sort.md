---
share_link: https://share.note.sx/i8z6eydv#GPaPkZDtrLAcLnq8NRJgB2Ww5KIJSqYMtcHgc1M0eQg
share_updated: 2025-07-04T11:25:10+02:00
---
#uni/algo
> - Teilt das Array **rekursiv in zwei Hälften**
> - Sortiert **jede Hälfte**
> - **Fügt** die sortierten Hälften **wieder zusammen**
> - Macht das so lange, bis das ganze Array sortiert ist
>    → **_Teilen & Herrschen_**
> 
> **Komplexität**
> O(n log n)

---

# Bewertung
**Vorteile**
	- [[Stabilität in Sortieralgorithmen|Stabil]]
	- Konstante Laufzeit O(n log n)
	- Gut für große Datenmengen
 
**Nachteile**
	- Hoher Speicherverbrauch
	- langsam für kleine Arrays
	- Nich In-Place

---

# Ablauf
1. Teilen
2. Beherrsche 🫩
3. Vereinigen

```
[8, 4, 2, 6]
-> teilen
[8,4] [2,6]

[8] [4] [2,6]
-> Linke seite vereinigen
[4,8]

-> Rechte Seite teilen
[4,8] [2] [6]

-> Rechte Seite vereinigen
[4,8] [2,6]

-> Alle Vereinigen
[2,4,6,8]
```


**Code Beispiel**

```python
def merge(arr,left,mid,right):
	k = left
	i = j = 0
	L = arr[left:mid+1]
	R = arr[mid+1:right+1]

	while i < len(L) and j < len(R):
		if L[i] <= R[j]:
			arr[k] = L[i]
			i += 1
		else:
			arr[k] = R[j]
			j+=1
		k += 1
		
	while i < len(L):
			arr[k] = L[i]
			i += 1
			k += 1  
	while j < len(R):
			arr[k] = R[j]
			j += 1
			k += 1

def merge_sort(arr, left=0, right=None):
	if right == None:
		right = len(arr) - 1

	if left < right:
		mid = (left + right) // 2
		merge_sort(arr, left, mid)
		merge_sort(arr, mid+1, right)
		merge(arr,left,mid,right)
	return arr
	
```




