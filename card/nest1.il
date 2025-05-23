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
        spec           [1, 9]
        commit         ["_init", 0]
        newmem       [1, 0, 0]
        newmem       [2, 0, 0]
        loadruleset    [0, @601]
        newatom      [3, 1, 'a'_0]
        newatom      [4, 1, 'a'_0]
        newatom      [5, 2, 'a'_0]
        newatom      [6, 2, 'a'_0]
        newatom      [7, 2, 'a'_0]
        newatom      [8, 0, 'token'_0]
        proceed        []

// <1,>{<1,>a,$p} :- <1,>{<1,>b,$p}
// {a,M<0,>a,$p0},N<0,>{a,L<0,>a,$p1}
Compiled Ruleset @601
Compiled Rule
    --atommatch:
    --memmatch:
        spec           [1, 25]
        findatom [18, 0, 'token'_0]
        anymem       [1, 0, 0, null]
        norules      [1]
        findatom     [2, 1, 'a'_0]
        branch [[
            findatom [3, 1, 'a'_0]
            neqatom  [3, 2]
            pushmap  [4, [3]]
            failreturn []
        ]]
        pickmaps   [5, 4, -1]
        not [[
            findatom [19, 1, 'a'_0]
            neqatom [19, 2]
            mapneqatom [19, [5, 3]]
            proceed []
        ]]
        branch [[
            anymem       [7, 0, 0, null]
            neqmem       [7, 1]
            findatom     [8, 7, 'a'_0]
            branch [[
                findatom  [9, 7, 'a'_0]
                neqatom   [9, 8]
                pushmap   [10, [9]]
                failreturn []
            ]]
            pickmaps     [11, 10, -1]
            not [[
                findatom [20, 7, 'a'_0]
                neqatom [20, 8]
                mapneqatom [20, [11, 9]]
                proceed []
            ]]
            pushmap [15, [7, 8, 11]]
            failreturn []
        ]]
        pickmaps [16, 15, -1]
        not [[
            anymem [21, 0, 0, null]
            neqmem [21, 7]
            mapneqmem [21, [16, 7]]
            proceed []
        ]]
        commit ["nest1", 0]
        removeatom [18,0]
        removeatom [2, 1]
        newatom [6, 1, 'b'_0]
        loop [[
            popmap [5]
            removeatom [3, 1]
            newatom [12, 1, 'b'_0]
            proceed []
        ]]
        loop [[
            popmap [16]
            removeatom [8, 7]
            newatom [17, 7, 'b'_0]
            loop [[
                popmap [11]
                removeatom [9, 7]
                newatom [14, 7, 'b'_0]
                proceed []
            ]]
            proceed []
        ]]
        proceed []
