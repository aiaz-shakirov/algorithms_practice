def bubble_sort(arr):
    for i in range(len(arr) - 1):
        for j in range(len(arr) - 1 - i):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr
result = bubble_sort([5, 2, 8, 1, 9, 3])
print(f"После сортировки пузырьком: {result}")