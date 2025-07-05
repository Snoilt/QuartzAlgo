---
share_link: https://share.note.sx/01bino06#P5BfZvViR83a9JnONQHGs+NZfV3W5k3NiB9aGQ1vzEk
share_updated: 2025-07-04T11:26:03+02:00
---
#uni/algo
**Code Beispiel**
```python
import math

def LEFT(i):
    return 2 * i + 1

def RIGHT(i):
    return 2 * i + 2

def maxHeapify(A, i, n):
    l = LEFT(i)
    r = RIGHT(i)
    largest = i

    if l < n and A[l] > A[i]:
        largest = l
    if r < n and A[r] > A[largest]:
        largest = r
    if largest != i:
        A[i], A[largest] = A[largest], A[i]
        maxHeapify(A, largest, n)
    return A

def buildMaxHeap(A, n):
    for i in range(math.floor(n/2), 0):
        maxHeapify(A, i, n)
		
```

