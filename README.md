## All test cases

### not

- only atoms
  - [x] a. <^>a :- a. -> a.
  - [x] b. <^>a :- a. -> b, a.
  - [x] a, a. <^>a, a, a :- c, c. -> c, c.
  - [x] a, a. <^>(a, a, a) :- a. -> a, a, a.
- link
  - [x] a(X), b(X). c(Y), b(Y). <^>a(X) :- a(X).
    - -> a(X), e(X). e(Y), e(Y).
  - [x] a(X), c(X). a(X), <^>b(X) :- a(X), b(X).
    - -> a(X), b(X).
- mem
  - [x] {a}, {b}. {<^>a, $p} :- {a, $p}.
    - -> {a}, {a, b}.
  - [x] {a, a}, {c}. <^>{a} :- {a}.
    - -> {a}, {c}, {a, a}.
  - [x] {b, b, b}, {a}. {<^>a, $p} :- {a, $p}.
    - -> {b, b, b, a}, {a}.
  - [x] {b, b, b}, {a, a, a}, {a}. {<^>a} :- .
    - {a}.
  - [x] {b, b}. <^>{a, $p} :- {a, $p}.
    - -> {b, b, a}.
  - [x] {a}, {a, b}, {a, a, b}. <^>{<^>a, $p} :- {$p}, {c}
    - -> {a}, {a, b}, {a, a, b}, {c}.
  - [x] d(X), {b(X)}. <^>(a(X), {b(X)}) :- a(X), {b(X)}.
    - -> d(X), {b(X)}, a(Y), {b(Y)}.


### cardinality
- only atoms
- link
- mem

### all
- only atoms
- link
- mem
