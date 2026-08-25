words = ["apple", "banana", "apple", "orange", "banana", "apple"]

frequency = {}
for word in words:
    if word in frequency:
        frequency[word] += 1
    else:
        frequency[word] = 1
max_word = max(frequency, key=frequency.get)
print(f"Самое частое слово: {max_word}")