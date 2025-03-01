def longest subarray with sum le k(arr, K):
    n = len(arr)
    max length = 0
    current sum = 0
    start = 0

    for end in range(n):
        current sum += arr[end]

        while current sum > K:
            current sum -= arr[start]
            start += 1

        max length = max(max length, end - start + 1)

    return max_length
