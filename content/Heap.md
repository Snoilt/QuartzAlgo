> [[Datenstrukturen]]
> Heaps werden in min-heap und max-heap 
> **min-heap**
> *Eltern Knoten sind $\leq$ Kinder, **Wurzel** ist kleinste Zahl*
> **max-heap**
> *Eltern Knoten sind $\geq$ Kinder, **Wurzel** ist größte Zahl*

# Wofür ist das gut 
Sofortiger Zugriff auf Maximum/Minimum ⇒  O(1)

Einfügen Entfernen → $O(\log n)$


![[Pasted image 20250704225422.png]]

# Access Heap 

- Für Index i:
    
    - **Left child** = 2*i + 1
        
    - **Right child** = 2*i + 2
        
    - **Parent** = (i - 1) // 2