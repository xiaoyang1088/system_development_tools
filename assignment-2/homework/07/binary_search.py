def binary_search(nums, target):
    low = 0
    high = len(nums) - 1

    while low <= high:
        mid = (low + high) // 2

        if nums[mid] == target:
            return mid

        if nums[mid] < target:
            low = mid+1
        else:
            high = mid - 1

    return -1


print(binary_search([1, 3, 5, 7, 9], 8))
