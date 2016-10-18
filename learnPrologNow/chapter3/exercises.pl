% Answers to Chapter 3 exercises


% Exercise 3.2 - Russian dolls

directlyIn(katarina, olga).
directlyIn(olga, natasha).
directlyIn(natasha, irina).

in(X, Y) :-
    directlyIn(X, Y).

in(X, Y) :-
    directlyIn(X, Z),
    in(Z, Y).


% Exercises 3.3 - Trains

directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

travelFromTo(X, Y) :-
    directTrain(X, Y).

travelFromTo(X, Y) :-
    directTrain(X, Z),
    travelFromTo(Z, Y).


% Greater than

greater_than(succ(X), 0).
greater_than(succ(X), succ(Y)) :-
    greater_than(X, Y).


% Binary tree

leaf(3).                        % A leaf node
leaf(7).                        % Another leaf node

tree(leaf(1), leaf(2)).         % A simple tree

swap(leaf(X), leaf(X)).

swap(tree(B1, B2), tree(SWB2, SWB1)) :-
    swap(B1, SWB1),
    swap(B2, SWB2).
