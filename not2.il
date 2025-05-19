// b.
// <^>a :- a.
// -> b, a.

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
        spec           [1, 2]
        commit         ["_init", 0]
        loadruleset    [0, @601]
        newatom      [1, 0, 'b'_0]
        proceed        []


Compiled Ruleset @601
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 3]
        not [[
          findatom     [1, 0, 'a'_0]
          proceed      []
        ]]
        commit         ["_ac", 0]
        newatom      [2, 0, 'a'_0]
        proceed        []
