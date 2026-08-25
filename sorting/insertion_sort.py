def insertion_sort(arr):
    for i in range(1, len(arr)):
        key = arr[i]
        j = i - 1
        while j >= 0 and arr[j] > key:
            arr[j+1] = arr[j]
            j -= 1
        arr[j+1] = key
    return arr
result = insertion_sort([5, 2, 8, 1, 9, 3])
print(f"После сортировки вставками: {result}")