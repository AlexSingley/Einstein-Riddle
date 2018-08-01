:- use_module(library(clpfd)).

	beside(X, Y) :-
    (X #= (Y - 1)) #\/ (X #= (Y + 1)).

	myprogram([Norwegian, Ukranian, Englishman, Spaniard, Japanese], Water, Zebra) :-

    Nation = [Norwegian, Ukranian, Englishman, Spaniard, Japanese],
    Color = [Yellow, Blue, Red, Ivory, Green],
    Candy = [KitKats, Hersheys, Smarties, Snickers, MilkyWays],
    Drink = [Water, Tea, Milk, OrangeJuice, Coffee],
    Pet = [Fox, Horse, Snails, Dog, Zebra],

    all_distinct(Nation),
    all_distinct(Color),
    all_distinct(Candy),
    all_distinct(Drink),
    all_distinct(Pet),

    Nation ins 1..5,
    Color ins 1..5,
    Candy ins 1..5,
    Drink ins 1..5,
    Pet ins 1..5,
    
    label(Nation),
    label(Color),
    label(Candy),
    label(Drink),
    label(Pet),

    Englishman #= Red,			% Hint 1
    Spaniard #= Dog,			% Hint 2
    Norwegian #= 1,				% Hint 3
    Green #= Ivory + 1,		% Hint 4
    beside(Hersheys, Fox),		% Hint 5
    KitKats #= Yellow,			% Hint 6
    beside(Norwegian, Blue),	% Hint 7
    Smarties #= Snails,			% Hint 8
    Snickers #= OrangeJuice,	% Hint 9
    Ukranian #= Tea,			% Hint 10
    Japanese #= MilkyWays,		% Hint 11
    beside(KitKats, Horse),		% Hint 12
    Coffee #= Green,			% Hint 13
    Milk #= 3.					% Hint 14