male(albert).
male(vince).

female(alice).
female(diana).

isHappy(alice).
datesAlbert(alice).

% bill does not swim, cause he is not happy

swims(bill) :-
 	isHappy(bill).

% alice does dance, cause she is happy and she dates albert

dances(alice) :-
	isHappy(alice),
	datesAlbert(alice).

does_alice_dance :- dances(alice),
	write('When Alice is happy and with Albert, she dances').



/*
	write('Hello World'), nl,
	write('Let\'s Program').
*/


blushes(X) :-
	human(X).

human(derek).

% juliet only loves romeo if romeo loves juliet

loves(romeo, juliet).
loves(romeo, hisFamily).

loves(juliet, romeo) :- loves(romeo, juliet).

% romeo hates X if X stabs mercutio with a sword

stabs(tybalt,mercutio,sword).
hates(romeo, X) :- stabs(X, mercutio, sword). 
