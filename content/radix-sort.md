---
share_link: https://share.note.sx/rcyob8s5#z/6qu8jZ8s4QYh3uyVtwfRpSHWtvt5VxqapVuwSABII
share_updated: 2025-07-04T11:25:00+02:00
---
#uni/algo
> Sortieralgorithmus, der nach Stellenwerten sortiert
> Meist in Verbindung mit [[counting-sort]]
> **Komplexität**
> $O(k*n)$
> **n** = Anzahl Elemente
> **k** = Anzahl der Stellen, der größten Zahl

---

# Bewertung
**Vorteile**
- [[Stabilität in Sortieralgorithmen|Stabil]]
- Nicht Vergleichsbasiert → Nutzt Ziffern start Vergleiche
- Gut für viele Zahlen im kleinen bis mittleren Bereich

**Nachteile**
- Keine Negativen Zahlen
- Viel Speicherbedarf (Hohe RAM Auslastung)
- Not In-Place
- Schlecht für einzelne große Zahlen
- Komplizierte Implementation

---
# Ablauf
1. **Finde die größte Zahl** im Array
    
    → damit du weißt, wie viele Stellen (Digits) du sortieren musst
    
2. **Starte mit der niedrigsten Stelle**
    
    → z. B. Einerstelle (digit_place = 1)
    
3. **Sortiere nach dieser Stelle**
    
    → mit z. B. **Counting Sort**, stabil & schnell
    
4. **Gehe zur nächsten Stelle**
    
    → Zehner, Hunderter, usw. → digit_place *= 10
    
5. **Wiederhole das Ganze**, bis du die höchste Stelle durchhast
    
6. **Fertig sortiert**
```
arr = [170, 45, 75, 90]
1. Einerstelle sortieren → [170, 90, 45, 75]
2. Zehnerstelle sortieren → [170, 45, 75, 90]
3. Hunderterstelle sortieren → [45, 75, 90, 170]
```

---

**Code Beispiel**
→ Das war so scheiße schwer zu checken digga ich hoffe ich war einfach am geeken

**Umwandlung in echte Position**
`arr = [25, 15, 35]`
→ Nach üblicher Counting sort operation auf Einerstellen
`→ count = [0, 0, 0, 0, 0, 3, 0, 0, 0, 0]`
an 5ter stelle = 3 weil 3 mal 5 als einser in arr
`count = [0, 0, 0, 0, 0, 3, 3, 3, 3, 3]`
jetzt wissen wir an welcher Stelle im output array die Zahl mit dem Index platziert werden muss
`count[5]=3` → 5 kommt auf index 2 (3-1)

```python
def counting_sort_by_digit(arr, digit_place):
    n = len(arr)
    output = [0] * n
    count = [0] * 10  # Nur Ziffern von 0-9

    # Zählen, wie oft jede Ziffer vorkommt
    for num in arr:
        digit = (num // digit_place) % 10
        count[digit] += 1

    # Umwandeln in echte Positionen
    for i in range(1, 10):
        count[i] += count[i - 1]

    # Von hinten einsortieren (damit's stabil bleibt!)
    for i in range(n - 1, -1, -1):
        digit = (arr[i] // digit_place) % 10
        output[count[digit] - 1] = arr[i]
        count[digit] -= 1

    # Zurück in arr schreiben
    for i in range(n):
        arr[i] = output[i]


def radix_sort(arr):
    if not arr:
        return arr

    max_val = max(arr)
    digit_place = 1

    while max_val // digit_place > 0:
        counting_sort_by_digit(arr, digit_place)
        digit_place *= 10

    return arr
```