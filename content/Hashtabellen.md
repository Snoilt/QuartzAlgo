#uni/algo
>Dynamische Mengen mit einer begrenzten Anzahl an Elementen verwalten
>[[ADT - Abstrakte Datentypen]]
>
>Jeder Slot enthält entweder den Schlüssel k oder NIL
>
>**Komplexität der Operationen**
>INSERT DELETE → ==O(1)==
>SEARCH(worst case) → ==O(n)==
>
>*Alternative zu Verkettung*

#### Idee
Statt Speicherung des Elements mit **Schlüssel k** in **Slot k** wird eine
**Funktion h** genutzt und das Element im **Slot h(k)** gespeichert

#### Challenge
- Da |U| > m, haben mind. 2 Schlüssel den gleichen Hashwert.
- Wenn die Menge an tatsächlichen Schlüsseln |K| > m ist kommt es
zwangsläufig zu Kollisionen (bei |K| ≤ m kann es auch zu Kollisionen
kommen).
-  Kollisionsauflösung notwendig
→ [[Verkettung]]
→ [[offene Adressierung]]
**Siehe auch [[Divisionsmethode]] & [[Multiplikationsmethode]]**


#### Table Darstellung
- **Tabellen-Größe**: `m = 7` (Indizes 0…6)  ->
- **Hash-Funktion**: `h(k) = (ASCII des ersten Zeichens von k) mod m`

| Key | Erstes Zeichen | ASCII | h(k) = ASCII mod 7 | Index im Array |
|:---:|:--------------:|------:|------------------:|---------------:|
| cat | c              |    99 | 99 mod 7 = 1      |               1 |
| dog | d              |   100 | 100 mod 7 = 2     |               2 |
| pig | p              |   112 | 112 mod 7 = 0     |               0 | 
#### Array-Darstellung


| Index | 0     | 1     | 2     | 3 | 4 | 5 | 6 |
|:-----:|:-----:|:-----:|:-----:|:-:|:-:|:-:|:-:|
| Wert  | `pig` | `cat` | `dog` | - | - | - | - |