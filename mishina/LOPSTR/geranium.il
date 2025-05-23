// {cracked,flowering,flowering,unflowering},
// {cracked,flowering},
// {uncracked,flowering},
// {cracked,unflowering}.
// 
// M<+>{cracked,N<+>flowering,$p}
// :-
// M<+>({cracked,$p},{uncracked,N<+>flowering}).


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
		spec           [1, 15]
		commit         ["_init", 0]
		newmem       [1, 0, 0]
		newmem       [2, 0, 0]
		newmem       [3, 0, 0]
		newmem       [4, 0, 0]
		loadruleset    [0, @601]
		newatom      [5, 1, 'cracked'_0]
		newatom      [6, 1, 'flowering'_0]
		newatom      [7, 1, 'flowering'_0]
		newatom      [8, 1, 'unflowering'_0]
		newatom      [9, 2, 'cracked'_0]
		newatom      [10, 2, 'flowering'_0]
		newatom      [11, 3, 'uncracked'_0]
		newatom      [12, 3, 'flowering'_0]
		newatom      [13, 4, 'cracked'_0]
		newatom      [14, 4, 'unflowering'_0]
		proceed        []


Compiled Ruleset @601 
Compiled Rule 
	--atommatch:
	--memmatch:
		spec           [1, 32]
		anymem         [1, 0, 0, null]
		findatom       [2, 1, 'cracked'_0]
		findatom       [3, 1, 'flowering'_0]
		branch         [[
			findatom       [4, 1, 'flowering'_0]
			neqatom        [4, 3]
			pushmap        [5, [4]]
            failreturn     []
		]]
		pickmaps       [6, 5, -1]
		not            [[
			findatom       [7, 1, 'flowering'_0]
			neqatom        [7, 3]
			mapneqatom     [7, [6, 4]]
			proceed        []
		]]
		branch         [[
			anymem         [8, 0, 0, null]
			neqmem         [8, 1]
			findatom       [9, 8, 'cracked'_0]
			findatom       [10, 8, 'flowering'_0]
			branch         [[
				findatom       [11, 8, 'flowering'_0]
				neqatom        [11, 10]
				pushmap        [12, [11]]
            	failreturn     []
			]]
			pickmaps       [13, 12, -1]
			not            [[
				findatom       [14, 8, 'flowering'_0]
				neqatom        [14, 10]
				mapneqatom     [14, [13, 11]]
				proceed        []
			]]
			pushmap        [15, [8, 9, 10, 13]]
            failreturn     []
		]]
		pickmaps       [16, 15, -1]
		not            [[
			anymem         [17, 0, 0, null]
			neqmem         [17, 1]
			mapneqmem      [17, [16, 8]]
			findatom       [18, 17, 'cracked'_0]
			findatom       [19, 17, 'flowering'_0]
			branch         [[
				findatom       [20, 17, 'flowering'_0]
				neqatom        [20, 19]
				pushmap        [21, [20]]
            	failreturn     []
			]]
			pickmaps       [22, 21, -1]
			not            [[
				findatom       [23, 17, 'flowering'_0]
				neqatom        [23, 19]
				mapneqatom     [23, [22, 20]]
				proceed        []
			]]
			proceed        []
		]]
		commit         ["test", 0]
		newmem         [24, 0, 0]
		newatom        [25, 24, 'uncracked'_0]
		newatom        [26, 24, 'flowering'_0]
		removeatom     [3, 1]
		loop           [[
			popmap         [6]
			removeatom     [4, 1]
			newatom        [27, 24, 'flowering'_0]
			proceed        []
		]]
		loop           [[
			popmap         [16]
			newmem         [28, 0, 0]
			newatom        [29, 28, 'uncracked'_0]
			newatom        [30, 28, 'flowering'_0]
			removeatom     [10, 8]
			loop           [[
				popmap         [13]
				removeatom     [11, 8]
				newatom        [31, 28, 'flowering'_0]
				proceed        []
			]]
			proceed        []
		]]
		proceed        []