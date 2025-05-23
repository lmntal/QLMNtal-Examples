// a(X), b(X). c(Y), b(Y).
// <^>a(X) :- . // is not applied
// -> a(X), b(X). c(Y), b(Y).

Compiled Ruleset @602
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 1]
        jump           [L107, [0], [], []]
    --body:L107:
        spec           [1, 5]
        commit         ["_init", 0]
        loadruleset    [0, @601]
        newatom      [1, 0, 'a'_1]
        newatom      [2, 0, 'b'_1]
        newatom      [3, 0, 'c'_1]
        newatom      [4, 0, 'b'_1]
        newlink        [1, 0, 2, 0, 0]
        newlink        [3, 0, 4, 0, 0]
        proceed        []


Compiled Ruleset @601
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 2]
        not [[
            findatom     [1, 0, 'a'_1]
            proceed      []
        ]]
        jump           [L102, [0], [1], []]
    --body:L102:
        spec           [2, 3]
        commit         ["_aXeX", 0]
        proceed        []
