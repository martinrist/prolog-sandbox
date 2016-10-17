% Factorial implementation

fact(1,1).

fact(N, A) :-
    fact(N1, A1),
    N is N1+1,
    A is A1 * N.