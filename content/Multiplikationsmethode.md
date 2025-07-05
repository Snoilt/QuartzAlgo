---
share_link: https://share.note.sx/qyq0zzqx#M2PpyKOBjPzy3d2MfTpH/sSpE0TCzWJQ/3eql4Y+fMY
share_updated: 2025-07-05T13:40:17+02:00
---
#uni/algo 
>[[Hashfunktion]] nach Mulitplikationsmethode für einen **Schlüssel k** und Tabelle mit **m Slots**
**Funktion**
$h(𝑘)=⌊𝑚 (𝑘\ 𝐴 \ mod \ 1)⌋$

---
# Ablauf
1. Wähle Konstante A im Bereich $]0..1[$ ⇒ Alles zwischen 0 und 1
2. Multipliziere **Schlüssel k** mit **A**
3. Extrahiere den gebrochenen Teil von **k*A** ⇒ Also mod 1
4. Multipliziere dies mit **m**
5. Runde Wert ab (bei Python mit int)

**Beispiel**
k = 21
m = 8
A = 0,618

21*0,618 = 13,978
0,978*8 = 7,824
int(7,824) = 7
h(21) = 7

---
### Wie wählt man $A$?
**A = (√5 – 1) / 2 ≈ 0.6180339…** → Knuths recommendation/goldener Schnitt
⇒ weil **(√5–1)/2** ’ne **irrationale Zahl** ist  und laut Equidistribution-Theorem sind die **fractional parts** von k·A dann **gleichmäßig** auf $]0,1[$ verteilt

- **Irrationalität** heißt: k·A kann nie zyklisch werden → keine periodischen Muster

---
#### Vorteil
**Wert von *m* spielt keine kritische Rolle. (Oft als Potenz von 2 gewählt)**

---
#### Nachteil 
**langsamer als Divisionsmethode**