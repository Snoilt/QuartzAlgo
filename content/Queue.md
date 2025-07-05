---
share_link: https://share.note.sx/ffgtz6tq#J+yZQzFrrrdKIjC3X0/AyPTUhtjICjM+kSJBhRQ/i4M
share_updated: 2025-07-04T11:25:31+02:00
---
#uni/algo
>Eine Warteschlange (engl. Queue) ist eine lineare Liste, bei der das Einfügen von
Elementen an einem Ende der Liste durchgeführt wird und das Löschen sowie ggf.
weitere Operationen am anderen Ende
>FIFO - First in First Out

**insert(enqueue)** stellt neues Element ans ==Ende der queue==
**delete(deqeue)** entfernt element am ==Kopf der queue==


**Beispiel**
*Queue für 11 Elemente, gefüllt mit 5 Elementen
Feld als Ring interpretiert*
![[Screenshot 2025-07-01 at 9.43.24 PM.png]]
*Insert elements*
```
ENQUEUE(Q,17) 
ENQUEUE(Q,3)
ENQUEUE(Q,5)
```
![[Screenshot 2025-07-01 at 9.44.21 PM.png]]
*Remove one Element*
```
DEQUEUE(Q)
```

![[Screenshot 2025-07-01 at 9.44.33 PM.png]]

---
**Python Code Beispiel**
```python
from collections import deque

# Erzeugung und Initialisierung der Warteschlange
queue = deque(["Eric", "John", "Michael"])
print(queue)

queue.append("Terry G")        # Terry G kommt an
print(queue)

x = queue.popleft()            # Der erste verlässt die Warteschlange (Eric)
print(x)

x = queue.popleft()            # Der zweite verlässt die Warteschlange (John)
print(x)

queue.append("Terry J")        # Terry J. kommt an
print(queue)                   # Remaining queue in order of arrival
```
**Verwendung**
```bash
deque(['Eric', 'John', 'Michael'])

deque(['Eric', 'John', 'Michael', 'Terry G'])

Eric

John

deque(['Michael', 'Terry G', 'Terry J'])
```