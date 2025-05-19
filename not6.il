// {a}, {b}.
// {<^>a, $p} :- {a, $p}.
// -> {a}, {a}.

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
        spec           [1, 5]
        commit         ["_init", 0]
        newmem       [1, 0, 0]
        newmem       [2, 0, 0]
        loadruleset    [0, @601]
        newatom      [3, 1, 'a'_0]
        newatom      [4, 2, 'b'_0]
        proceed        []


Compiled Ruleset @601
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 3]
        anymem       [1, 0, 0, null]
        not [[
          findatom     [2, 1, 'a'_0]
          proceed        []
        ]]
        jump           [L101, [0, 1], [2], []]
    --guard:L101:
        spec           [3, 3]
        norules        [1]
        jump           [L102, [0, 1], [2], []]
    --body:L102:
        spec           [3, 5]
        commit         ["_apcp", 0]
        newatom      [4, 1, 'a'_0]
        proceed        []
