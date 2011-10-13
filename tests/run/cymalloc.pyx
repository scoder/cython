
cimport cython

def test_malloc(int n):
    """
    >>> test_malloc(5)
    [0, 1, 2, 3, 4]
    >>> test_malloc(10)
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    """
    with cython.malloc(n*sizeof(int)) as m:
        for i in range(n):
            m[i] = i
        l = [ m[i] for i in range(n) ]
    return l

def test_unknown_name(int n):
    """
    >>> test_unknown_name(5)
    [0, 1, 2, 3, 4]
    >>> test_unknown_name(10)
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    """
    with cython.unknown_name(n*sizeof(int)) as m:
        for i in range(n):
            m[i] = i
        l = [ m[i] for i in range(n) ]
    return l
