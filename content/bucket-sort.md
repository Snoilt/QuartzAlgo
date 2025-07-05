#uni/algo
>Bucket Sort teilt das Array auf mehrere Buckets auf und sortiert zahlen der größe nach für die kleineren in die ersten und für die großen in die letzteren ein. Danach wird eine Sort funktion auf die jeweiligen Buckets angewandt (Meist [[Insert-sort]]) und dann werden die buckets aneinander gereiht
>**Komplexität**
>O(n) worst Case O(n^2)
---
  
**Code Beispiel mit Insertionsort implementiert**
```python

def bucket_sort(arr, bucket_size=10):
    if len(arr) <= 1:
        return arr
    min_val, max_val = min(arr), max(arr)
    bucket_count = int((max_val - min_val) / bucket_size) + 1
    buckets = [[] for _ in range(bucket_count)]
    
    for num in arr:
        idx = int((num - min_val) / bucket_size)
        buckets[idx].append(num)
    sorted_arr = []
    
    for bucket in buckets:
        for i in range(1, len(bucket)):
            key = bucket[i]
            j = i - 1
            while j >= 0 and bucket[j] > key:
                bucket[j + 1] = bucket[j]
                j -= 1
            bucket[j + 1] = key
        sorted_arr.extend(bucket)
    return sorted_arr


if __name__ == "__main__":
    data = [0.42, 0.32, 0.23, 0.52, 0.25, 0.47, 0.51]
    print("unsortiert:", data)
    print("sortiert  :", bucket_sort(data, bucket_size=0.1))
```