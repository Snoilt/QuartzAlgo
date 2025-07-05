#algo/queues
 - Warteschlangenoperationen laufen mit O(1)
 - Q.ende zeigt immer aus nächste leere feld.

**fifo - first in first out**
**lifo - last in first out**

## FIFO Beispiel
![[Screenshot 2025-03-17 at 12.55.19 PM.png]]

```python
queue.popleft = kopfentnahme
queue.popright = endeentnahme
```


## Code Beispiel für 2 Stapel

- Bei 2 Stacks den einen Stack invertiert auf den anderen kopieren
- **disclaimer: need to import Stack from torch to run**
- auch **O(N) :(**

```python
stapel_1 = Stack()
stapel_2 = Stack()

def enqueue(wert):
	stapel_1.push(wert)

def dequeue():
	#alle Werte von S1 → S2
	while not stapel_1.empty():
		stapel_2.push(stapel_1.pop())
	if stapel_2.empty():
		print("Unterlauf")
		return none
	else:
		return stapel_2.pop()
