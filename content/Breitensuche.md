---
share_link: https://share.note.sx/ugkrkc8g#dOaCTUZXPJbZnJIzqLSIsGTjALUEJKLKAFTVu/htBHw
share_updated: 2025-07-04T11:25:58+02:00
---
#uni/algo
**Code Beispiel**
```python
graph = {
"A": ["B", "C"],
"B": ["D", "E"]
}

from collections import deque

def bfs(graph, start):
	visited = set()
	queue = deque([start])

	while queue:
		node = queue.popleft()
		if node not in visited: 
			print(node)
			visited.add(node)
			neighbors = graph[node]
			queue.extend(neighbors)

```