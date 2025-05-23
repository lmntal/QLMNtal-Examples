// {a}, {a, b}, {a, a, b}.
// <^>{<^>a, $p} :- {$p}, {c}
// {a}, {a, b}, {a, a, b}, {c}.

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
        spec           [1, 10]
        commit         ["_init", 0]
        newmem       [1, 0, 0]
        newmem       [2, 0, 0]
        newmem       [3, 0, 0]
        loadruleset    [0, @601]
        newatom      [4, 1, 'a'_0]
        newatom      [5, 2, 'a'_0]
        newatom      [6, 2, 'b'_0]
        newatom      [7, 3, 'a'_0]
        newatom      [8, 3, 'a'_0]
        newatom      [9, 3, 'b'_0]
        proceed        []


Compiled Ruleset @601
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 6]
        not [[
          anymem       [1, 0, 0, null]
          not [[
            findatom     [2, 1, 'a'_0]
            proceed      []
          ]]
          proceed        []
        ]]
        commit         ["_appc", 0]
        newmem       [4, 0, 0]
        newatom      [5, 4, 'c'_0]
        proceed        []
