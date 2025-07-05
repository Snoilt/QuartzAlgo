---
share_link: https://share.note.sx/aw2xkf4f#TIoV9624fEW/MAIfs73Ni3llSMjlI+LKllzqZc5eTWk
share_updated: 2025-07-04T11:26:41+02:00
---
#uni/algo
> [[Datenstrukturen]], [[ADT - Abstrakte Datentypen]]
> Verkettete Listen bestehen aus miteinander verketteten Elementen(Knoten)
> Jeder Knoten besitzt einen Schlüssel und einen Verweis auf seinen Nachfolger (Unter Umständen auch Vorgänger)

**Beispiel für Schlüssel ohne Verweis auf Vorgänger**
![[Screenshot 2025-07-01 at 10.14.35 PM.png]]

---
Man bezeichnet das erste Element als "Listenkopf"
Ein Zeiger zeigt immer auf den Listenkopf

Falls kein Nachfolger / Vorgänger existiert wird der Zeiger = "NIL(Not In List)" oder "/" 

---

- Objekte werden in linearer Reihenfolge angeordnet
- Reihenfolge wird durch Zeiger festgelegt

---
# Verschiedene Formen von Listen
**Verkettung**
- einfach verkettet: nur Nachfolger
- doppelt verkettet: Nachfolger & Vorgänger

**Sortierung**
- sortiert
- nicht sortiert

**Anordnung**
- zyklisch: nachfolgendes Element von Listenende zeigt auf Listenkopf, Vorgänger von Listenkopf zeigt auf Listenende
- nicht zyklisch: NIL / 

# Wächter
>Dummy-Objekt zur Vereinfachung von Randbedingungen

Der Wächter zeigt bei der Listenerzeugung auf sich selbst und ist nur dazu da eine Liste Zyklisch zu gestalten. 

**Ohne**
![[Screenshot 2025-07-01 at 10.22.00 PM.png]]

**Mit**
![[Screenshot 2025-07-01 at 10.22.00 PM 1.png]]

