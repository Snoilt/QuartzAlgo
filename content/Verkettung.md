#uni/algo
>**Verkettung** ist eine Methode zur *Kollisionsauflösung* in Hashtabellen.
>
>Wenn mehrere Schlüssel denselben Hashwert ergeben (also eine Kollision auftritt), werden sie in einer **verketteten Liste** (z. B. eine einfach verkettete Liste) am entsprechenden Slot gespeichert.  

### Beispiel:
- Hashfunktion: `h(k) = k mod m`
- Werte: `5, 14, 23` bei `m = 9`  
→ Alle ergeben den Hashwert 5:  
`Slot 5: 5 → 14 → 23`


### Vorteile:
- Einfache Implementierung
- Kein aufwändiges Suchen nach freien Feldern notwendig  

### Nachteile:
- Höherer Speicherbedarf (für die Listen)
- Schlechtere Zugriffszeiten bei vielen Kollisionen

### Komplexitäten (im Durchschnitts- und Worst-Case):

| Operation | Durchschnittlicher Fall | Schlechtester Fall |
|-----------|--------------------------|---------------------|
| Suche     | O(1 + α)                 | O(n)                |
| Einfügen  | O(1)                     | O(1)                |
| Löschen   | O(1 + α)                 | O(n)                |