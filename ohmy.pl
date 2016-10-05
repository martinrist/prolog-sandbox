% Lions and tigers are cats
cat(lion).
cat(tiger).

% are both animals cats?
twin_cats(X, Y) :- cat(X), cat(Y).

dorothy(X, Y, Z) :- X = lion, Y = tiger, Z = bear.