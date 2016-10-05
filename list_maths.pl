% Maths with lists

% Recursive implementation of list length
count(0, []).

count(Count, [_|Tail]) :-
    count(TailCount, Tail), Count is TailCount + 1.


% Recursive implementation of list sum
sum(0, []).

sum(Sum, [Head|Tail]) :-
    sum(TailSum, Tail), Sum is TailSum + Head.


% Simple average that just uses the above definitions
average(Average, List) :-
    count(Count, List), sum(Sum, List), Average = Sum/Count.
