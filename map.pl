different(red, green).
different(red, blue).
different(green, red).
different(green, blue).
different(blue, red).
different(blue, green).

colouring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
    different(Alabama, Mississippi),
    different(Alabama, Tennessee),
    different(Alabama, Georgia),
    different(Alabama, Florida),
    different(Mississippi, Tennessee),
    different(Georgia, Tennessee),
    different(Georgia, Florida).