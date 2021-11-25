def linear_search(pat, txt):
    counts = 0
    M = len(pat)
    N = len(txt)

    for i in range(N - M + 1):
        j = 0
        while j < M:
            if txt[i + j] != pat[j]:
                break
            j += 1

        if j == M:
            counts += 1

    print(counts)


if __name__ == "__main__":
    txt = "lorem ipsum dolor sit amet lorem"
    pat = "lorem"
    linear_search(pat, txt)
