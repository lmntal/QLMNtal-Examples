// a, a.
// a, a, <^>a :- c, c.

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
        spec           [1, 3]
        commit         ["_init", 0]
        loadruleset    [0, @601]
        newatom      [1, 0, 'a'_0]
        newatom      [2, 0, 'a'_0]
        proceed        []


Compiled Ruleset @601
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 4]
        findatom     [1, 0, 'a'_0]
        findatom     [2, 0, 'a'_0]
        neqatom        [2, 1]
        not [[
          findatom     [3, 0, 'a'_0]
          neqatom        [3, 1]
          neqatom        [3, 2]
          proceed      []
        ]]
        jump           [L101, [0], [1, 2, 3], []]
    --guard:L101:
        spec           [4, 4]
        jump           [L102, [0], [1, 2, 3], []]
    --body:L102:
        spec           [4, 6]
        commit         ["_aaac", 0]
        removeatom     [1, 0]
        removeatom     [2, 0]
        removeatom     [3, 0]
        newatom      [4, 0, 'c'_0]
        newatom      [5, 0, 'c'_0]
        freeatom       [1]
        freeatom       [2]
        freeatom       [3]
        proceed        []
