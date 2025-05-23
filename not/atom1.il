// a.
// <^>a :- a.
// -> a.

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
        newatom      [1, 0, 'a'_0]
        proceed        []


Compiled Ruleset @601
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 2]
        not [[
          findatom     [1, 0, 'a'_0]
          proceed      []
        ]]
        jump           [L101, [0], [1], []]
    --guard:L101:
        spec           [2, 2]
        jump           [L102, [0], [1], []]
    --body:L102:
        spec           [2, 3]
        commit         ["_ac", 0]
        newatom      [2, 0, 'a'_0]
        proceed        []
