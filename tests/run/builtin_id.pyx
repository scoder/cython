# mode: run

def call_id(obj):
    """
    >>> obj = 1
    >>> call_id(obj) == id(obj) or call_id(obj)  # 1
    True
    >>> obj = "string"
    >>> call_id(obj) == id(obj) or call_id(obj)  # "string"
    True
    >>> obj = {}
    >>> call_id(obj) == id(obj) or call_id(obj)  # {}
    True
    """
    return id(obj)

def id_plus_1(obj):
    """
    >>> obj = 1
    >>> id_plus_1(obj) == id(obj) + 1 or id_plus_1(obj)  # 1
    True
    >>> obj = "string"
    >>> id_plus_1(obj) == id(obj) + 1 or id_plus_1(obj)  # "string
    True
    >>> obj = {}
    >>> id_plus_1(obj) == id(obj) + 1 or id_plus_1(obj)  # {}
    True
    """
    return id(obj) + 1
