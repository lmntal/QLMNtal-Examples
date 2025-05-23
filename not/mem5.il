// {b, b}.
// <^>{a, $p} :- {a, $p}.
// -> {b, b, a}.

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
        spec           [1, 4]
        commit         ["_init", 0]
        newmem       [1, 0, 0]
        loadruleset    [0, @601]
        newatom      [2, 1, 'b'_0]
        newatom      [3, 1, 'b'_0]
        proceed        []


Compiled Ruleset @601
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 4]
        not [[
          anymem       [1, 0, 0, null]
          findatom     [2, 1, 'a'_0]
          proceed      []
        ]]
        commit         ["_apap", 0]
        newatom      [3, 1, 'a'_0]
        proceed        []
