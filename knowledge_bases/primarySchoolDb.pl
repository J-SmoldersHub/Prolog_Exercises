:- dynamic(boy/1).

boy(jake).
boy(jack).

girl(betty).
girl(babette).

what_grade(5) :-
 	write('go to kindergarten').

% Any Other then 5, will go to 'what_grade'
% If Other is 0 or lower, it will return false and not write 'Go to grade'

what_grade(Other) :-
	Grade is Other - 5,
	Grade > 0,
	write('Go to grade '),
	write(Grade).