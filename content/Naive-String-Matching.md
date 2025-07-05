---
share_link: https://share.note.sx/ae3enc7b#q1LvSCDiYIWQhpJoTWUfrbGD3BvWEow2TimEleXHyvQ
share_updated: 2025-07-04T11:26:20+02:00
---
#uni/algo 
**Code Beispiel**
```python
def NaiveStringMatching(t,p):
	n = len(t)
	m = len(p)
	for s in range(n-m + 1):
		if t[s:s + m] == p:
			print("Muster tritt auf mit Verschiebung")
	
```
**Problem**
Laufzeit schlecht → O(n*m)