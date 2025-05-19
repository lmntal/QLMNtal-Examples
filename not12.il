// d(X), {b(X)}.
// <^>(a(X), {b(X)}) :- a(X), {b(X)}.
// -> d(X), {b(X)}, a(Y), {b(Y)}.

Compiled Ruleset @602
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 1]
        jump           [L106, [0], [], []]
    --guard:L106:
        spec           [1, 1]
        jump           [L107, [0], [], []]
    --body:L107:
        spec           [1, 6]
        commit         ["_init", 0]
        newmem       [1, 0, 0]
        loadruleset    [0, @601]
        newatom      [2, 1, 'b'_1]
        newatom      [3, 1, $in_2]
        newatom      [4, 0, 'd'_1]
        newatom      [5, 0, $out_2]
        newlink        [2, 0, 3, 1, 1]
        newlink        [4, 0, 5, 1, 0]
        newlink        [5, 0, 3, 0, 0]
        proceed        []


Compiled Ruleset @601
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 11]
        not [[
          findatom     [1, 0, 'a'_1]
          deref        [2, 1, 0, 1]
          func           [2, $out_2]
          deref        [3, 2, 0, 0]
          func           [3, $in_2]
          lockmem      [4, 3, null]
          deref        [5, 3, 1, 0]
          func           [5, 'b'_1]
          proceed        []
        ]]
        commit         ["_aXbX", 0]
        newmem       [6, 0, 0]
        newatom      [7, 6, 'b'_1]
        newatom      [8, 6, $in_2]
        newatom      [9, 0, 'a'_1]
        newatom      [10, 0, $out_2]
        newlink        [7, 0, 8, 1, 6]
        newlink        [9, 0, 10, 1, 0]
        newlink        [10, 0, 8, 0, 0]
        proceed        []
