---
share_link: https://share.note.sx/x0j4zlli#TxEWfClCt+P5euv6BHT2I5pdA6i9Trrw0+USGzHJ/3c
share_updated: 2025-07-04T11:26:30+02:00
---
> **Komplexität**
> Best Case: $O(n \log n)$
> Worst Case: Bei sortiertem Array: $O(n^2)$

# Bewertung
**Vorteile**
	- durchschnittliche Laufzeit ist näher am bestfall als am schlechtesten Fall

**Nachteile**
	- Nicht [[Stabilität in Sortieralgorithmen|Stabil]]
	- Schlecht wenn schon sortierte Arrays übergeben werden

---

#uni/algo 
**Code Beispiel:**
```python
def partition(A, p, r):
	x = A[r]
	i = p
	for j in range(p, r):
		if A[j] < x:
		A[j], A[i] = A[i], A[j]
		i += 1
	A[r], A[i] = A[i], A[r]
	return i

def quicksort(A, p=0, r=None):
	if r == None:
		r = len(A) - 1
	if p < r:
		q = partition(A, p, r)
		quicksort(A, p, q-1)
		quicksort(A, q+1, r)
	return A

print(quicksort([4, 24, 24, 4, 45, 1, 6, 6, 6, 632, 15, 1]))
```

**Ablauf**
![[Screenshot 2025-06-30 at 9.00.53 AM.png]]