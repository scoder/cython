def iterate_bytes():
    cdef bytes bytes_string = b"hello to A bytes' world"

    cdef char c
    for c in bytes_string:
        if c == b'A':
            print("Found the letter A")
