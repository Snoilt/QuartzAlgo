---
share_link: https://share.note.sx/e4shtf3s#FZndQIb6HrDR5fR5HCFHutkLUUKHnUf+S4nycGWr3pc
share_updated: 2025-07-04T11:24:55+02:00
---
#uni/algo
>Ein Sortieralgorithmus ist **stabil**, wenn er **gleiche Werte in der gleichen Reihenfolge** lässt wie im Original-Array.
>👉 **_Reihenfolge bei gleichen Elementen bleibt erhalten, digga._**

**Beispiel**
```python
arr = [
    ("Lisa", 3),
    ("Ali", 1),
    ("Anna", 3),
    ("Bob", 2),
    ]
```

**Stabil 🔒**
→ Lisa bleibt vor Anna
```python
[
    ("Ali", 1),
    ("Bob", 2),
    ("Lisa", 3),
    ("Anna", 3),
]
```

**Instabil 💥**
→ Anna und Lisa wurden vertauscht
```python
[
    ("Ali", 1),
    ("Bob", 2),
    ("Anna", 3),
    ("Lisa", 3),
]
```