fooBarBaz(X) :- Y is X mod 15, Y = 0, writeln(baz).
fooBarBaz(X) :- Y is X mod 5,  Y = 0, writeln(bar).
fooBarBaz(X) :- Y is X mod 3,  Y = 0, writeln(foo).
fooBarBaz(X) :-                       writeln(X).


main() :- forall(between(1, 100, X), fooBarBaz(X)).