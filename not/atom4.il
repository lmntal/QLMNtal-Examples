// a, a.
// <^>(a, a, a) :- a.
// a, a, a.

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
        spec         [1, 5]
        not [[
          natoms         [0, 3]
          findatom       [1, 0, 'a'_0]
          findatom       [2, 0, 'a'_0]
          findatom       [3, 0, 'a'_0]
          neqatom        [2, 1]
          neqatom        [3, 1]
          neqatom        [3, 2]
          proceed        []
        ]]
        commit         ["_aaaa", 0]
        newatom      [4, 0, 'a'_0]
        proceed        []
