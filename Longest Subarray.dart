def longest subarray with sum k(arr, K):
    N = len(arr)
    start = 0
    current sum = 0
    max length = 0

    for end in range(N):
        current sum += arr[end]

        while current sum > K:
            current sum -= arr[start]
            start += 1

        max length = max(max length, end - start + 1)

    return max length

