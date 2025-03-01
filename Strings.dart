def expand string(s):
    result = []
    i = 0
    while i < len(s):
        if s[i].isalpha():
            result.append(s[i])
            i += 1
        elif s[i].isdigit():
            num = 0
            while i < len(s) and s[i].isdigit():
                num = num * 10 + int(s[i])
                i += 1
            result.extend(result[-1] * (num - 1))
    return ''.join(result)
