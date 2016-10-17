% Fibonacci implementation

fib(0, 1).
fib(1, 1).

fib(N, F) :-
    N>1,
    N1 is N-1,
    N2 is N-2,
    fib(N1, F1),
    fib(N2, F2),
    F is F1+F2.



fib2(1, 1).

fib2(X, Y) :- fib2(X, _, Y).

fib2(1, 0, 1).
fib2(N, A, B) :-
    N1 is N-1,
    fib2(N1,X,A),
    B is X+A.