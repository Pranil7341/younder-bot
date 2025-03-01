def is subset sum(array, sum):
    n = len(array)
    dp = [[False for  in range(sum + 1)] for  in range(n + 1)]

    # If sum is 0, then answer is true because we can have an empty subset
    for i in range(n + 1):
        dp[i][0] = True

    # Fill the dp array
    for i in range(1, n + 1):
        for j in range(1, sum + 1):
            if array[i-1] > j:
                dp[i][j] = dp[i-1][j]
            else:
                dp[i][j] = dp[i-1][j] or dp[i-1][j-array[i-1]]

    return dp[n][sum]

