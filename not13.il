// a(X), c(X).
// a(X), <^>b(X) :- a(X), b(X).
// -> a(X), b(X).

Compiled Ruleset @602
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 1]
        jump           [L107, [0], [], []]
    --body:L107:
        spec           [1, 3]
        commit         ["_init", 0]
        loadruleset    [0, @601]
        newatom      [1, 0, 'a'_1]
        newatom      [2, 0, 'c'_1]
        newlink        [1, 0, 2, 0, 0]
        proceed        []


Compiled Ruleset @601
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 3]
        findatom     [1, 0, 'a'_1]
        deref        [2, 1, 0, 0]
        not [[
            func           [2, 'b'_1]
            proceed []
        ]]
        jump           [L102, [0], [1, 2], []]
    --body:L102:
        spec           [3, 5]
        commit         ["_aXbX", 0]
        removeatom     [1, 0]
        removeatom     [2, 0]
        newatom      [3, 0, 'a'_1]
        newatom      [4, 0, 'b'_1]
        newlink        [3, 0, 4, 0, 0]
        freeatom       [1]
        freeatom       [2]
        proceed        []
