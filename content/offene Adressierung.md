>**Grundprinzip**: Kollidierende Schlüssel werden nicht in einer externen Liste gespeichert, sondern bleiben im Array – man sucht (probt) nach einem anderen freien Slot.

### Sondierung (Probing)

**Definition:**  
Tritt in einer Hashtabelle eine Kollision auf, durchsucht man systematisch das Array nach dem nächsten freien Feld, bis ein leerer Slot gefunden wird.

### Verfahren
- **Linear Probing:** Schrittweite 1 (`h(k) + i`). Einfach, führt aber oft zu Primär-Clustering.  
- **Quadratisches Probing:** Schrittweite i² (`h(k) + i²`). Verringert Clustering, findet jedoch nur Slots, solange die Tabelle nicht zu voll ist.  
- **Double Hashing:** Verwendet eine zweite Hashfunktion als Schrittweite (`h₁(k) + i · h₂(k)`). Bessere Verteilung, benötigt aber zwei Hashfunktionen.

### Komplexität

| Operation | Durchschnitt | Worst-Case |
|-----------|--------------|-----------|
| Suchen    | O(1)         | O(n)      |
| Einfügen  | O(1)         | O(n)      |
| Löschen   | O(1)         | O(n)      |