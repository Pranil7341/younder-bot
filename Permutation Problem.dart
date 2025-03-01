
def permuteUnique(nums: List[int]) -> List[List[int]]:
    def backtrack(first=0):
        # if all integers are used up
        if first == n:
            output.append(nums[:])
        for i in range(first, n):
            # skip duplicates
            if i > first and nums[i] == nums[first]:
                continue
            # place i-th integer first 
            # in the current permutation
            nums[first], nums[i] = nums[i], nums[first]
            # use next integers to complete the permutations
            backtrack(first + 1)
            # backtrack
            nums[first], nums[i] = nums[i], nums[first]

    nums.sort()
    n = len(nums)
    output = []
    backtrack()
    return output

