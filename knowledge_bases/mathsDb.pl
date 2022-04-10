% random

horizontal(line(point(X, Y), point(X2, Y))).

vertical(line(point(X, Y), point(X, Y2))).

write_to_file(File,Text) :-
	open(File, write, Stream),
	write(Stream, Text), nl,
	close(Stream).

read_file(File) :-
	open(File, read, Stream),
	get_char(Stream, FirstChar),
	process_stream(FirstChar, Stream),
	close(Stream).

process_stream(end_of_file, _) :- !.

process_stream(Char, Stream) :-
	write(Char),
	get_char(Stream, NextChar),
	process_stream(NextChar, Stream).

guess_num :- loop(start).

loop(15) :- write('You guessed it').

loop(X) :-
	write('Guess Number: '),
	read(Guess),
	(Guess \= 15 ->
		write(Guess),
		write(' is not the number.'), nl,
		loop(Guess)
	; loop(Guess)).
