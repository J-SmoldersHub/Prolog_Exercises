start:- get_word(st).

get_word(X) :-
	generate_random(Index),
	write(Index), nl,
	lingo_word(Index, Word),
	lingo(st, 1, Word).

lingo(X, Guess_Number, Word) :- 
	write(Word), 
	read(Guess),
	(Guess \== Word ->
		write('no'),
		lingo(st, Word)
	; Guess == Word ->
		write('yes')).

lingo_word(1, kaas).
lingo_word(2, kast).
lingo_word(3, klas).
lingo_word(4, kpas).
lingo_word(5, kqas).
lingo_word(6, kwas).
lingo_word(7, kmas).
lingo_word(8, kias).
lingo_word(9, koas).

generate_random(X) :- 
	random(1,10,Elem1),
	X = Elem1.