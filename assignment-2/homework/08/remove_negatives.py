def remove_negatives(values):
    result = values.copy()
    i = 0

    while i < len(result):
        if result[i] < 0:
            result.pop(i)
        else :
            i += 1

    return result


print(remove_negatives([3, -1, -2, 4, -5, -6]))
