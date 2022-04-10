customer(tom, smith, 120).
customer(ann, smith, 140).

% will write the customer salary, based on FName and LName

get_cust_salary(FName, LName) :-
	customer(FName, LName, Salary),
	write(Salary).