---
share_link: https://share.note.sx/bmbukscl#9Ix1LMTQZo/AtdK340C1k06g0dDxOQiRSoRq2lRrfXI
share_updated: 2025-07-05T13:40:08+02:00
---
#uni/algo
[[Hashfunktion]] für einen **Schlüssel k** mit einer Tabelle mit **m Slots**

**Funktion**
$h(k) = k \ mod \ m$

**Beispiel**
 m = 20
 k = 91
 → h(k) = 11

---
#### Vorteile
**Leicht zu berechnen**

---

#### Nachteile

^81f841

**Gefahr wenn $m=2^p$**
- In dem Falle ist ist h(k) nur von 2 niederwertigen Bits von k abhängig
- → Dadurch werden Werte den gleichen Schlüsseln zugeordnet ⇒ Cluster Collision 
**Beispiel**
(man geht davon aus das bei der Ausführung m kalkuliert wird, sodass es besagten wert erhält)
- **p = 3** → **m = 2³ = 8** Slots (0…7)  
- **Hashfunktion:** `h(k) = k mod 8`  _(nutzt nur die 3 niederwertigsten Bits)_
- **Beispiel-Keys:** `5, 13, 21, 29`

| Key | Binär       | `h(k) = k mod 8` | Slot |
|-----|-------------|------------------|------|
| `5` | `0000 0101` | `5`              | 5    |
| `13`| `0000 1101` | `5`              | 5    |
| `21`| `0001 0101` | `5`              | 5    |
| `29`| `0001 1101` | `5`              | 5    |

> **→ Alle Keys landen im selben Slot 5 → fette Collision-Cluster, digga!**  
> _(Hohe Bits werden komplett ignoriert, daher kollidieren alle Werte, die sich nur in den hohen Bits unterscheiden.)_
---

**Gefahr bei Strings: $m=2^p-1$**
Wenn du Strings polynomiell hashst und 
`m = 2^p–1` wählst dann kollidieren alle Permutationen.

**Beispiel**
Wenn B ≡ 1 mod (2^p–1) (z. B. B=256, m=255), reduziert sich der Polynom-Hash auf die **Summe der ASCII-Codes** mod m – alle Permutationen kollidieren dann.

  

| String | ASCII-Codes   | Codesumme | Hash (mod 255) |
|--------|---------------|----------:|---------------:|
| abc    | 97, 98, 99    |       294 |             39 |
| bca    | 98, 99, 97    |       294 |             39 |
| cab    | 99, 97, 98    |       294 |             39 |

---

> [!info]- Aber wann soll das überhaupt passieren?
>Die Gefahr dass diese Cases entstehen ist nur gegeben wenn man m im Code nicht dynamisch festlegt. Also Bsp. m=20. 
>Im Idealfall baut man aber eine Funktion, die m passend zu der Menge auf eine hohe Primzahl skaliert