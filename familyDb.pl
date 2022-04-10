male(albert).
male(bob).
male(bill).
male(carl).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

happy(alice).
with_albert(alice).

dances(alice) :-
	happy(alice),
	with_albert(alice).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(corry, saskia).

parent(dylan, saskia).

parent(bob, carl).
parent(bob, charlie).

parent(saskia, carl).
parent(saskia, charlie).


get_grandchild :-
	parent(albert, X),
	parent(X, Y),
	write(Y).

get_grand_parent(X, Y) :-
	parent(Z, X),
	parent(Y, Z).

brother(bob, bill).

related(X, Y) :-
 	parent(X, Y).

/* 
related x = albert, Y = carls
will find every Z where albert (X) is the parent of, so Z is child
then recursion, it will send every chid back to related with carl, finding out albert is indeed related to carl, 
because his child bob, is the parent of carl
*/

related(X, Y) :-
	parent(X, Z),
	related(Z, Y).

% parent(X, bob).			Who is parent of Bob?
% parent(X, bob), dances(X). 		Who is parent of Bob and also dances?
% parent(Y, carl), parent(X, Y)		Who is X (grandparent of carl)?'
% parent(albert, X), parent(X, Y) 	Who is alberts grandchild?