// {b, b, b}. {a, a, a}, {a}.
// {<^>a} :- .
// -> {a}.

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
        spec           [1, 11]
        commit         ["_init", 0]
        newmem       [1, 0, 0]
        newmem       [2, 0, 0]
        newmem       [3, 0, 0]
        loadruleset    [0, @601]
        newatom      [4, 1, 'b'_0]
        newatom      [5, 1, 'b'_0]
        newatom      [6, 1, 'b'_0]
        newatom      [7, 2, 'a'_0]
        newatom      [8, 2, 'a'_0]
        newatom      [9, 2, 'a'_0]
        newatom      [10, 3, 'a'_0]
        proceed        []


Compiled Ruleset @601
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 3]
        anymem       [1, 0, 0, null]
        not [[
          findatom       [2, 1, 'a'_0]
          natoms         [1, 1]
          nmems          [1, 0]
          norules        [1]
          proceed        []
        ]]
        commit         ["_a", 0]
        removemem      [1, 0]
        freemem        [1]
        proceed        []
