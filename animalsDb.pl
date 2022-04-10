% trace.
% notrace.

warmblooded(human).
warmblooded(whale).
warmblooded(penguin).

nourishesYoung(whale).
nourishesYoung(human).

hasHair(human).

isWhale(whale).

hasWings(eagle).

hasFeathers(penguin).
hasFeathers(eagle).

laysEgg(penguin).
laysEgg(eagle).

is_mammal(X) :-
	warmblooded(X),
	nourishesYoung(X),
	hasHair(X) ; isWhale(X).
