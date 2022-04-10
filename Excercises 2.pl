/*

2.3 Exercises
Exercise  2.1 Which of the following pairs of terms unify? 
Where relevant, give the variable instantiations that lead to successful unification.

bread  =  bread                                         V
’Bread’  =  bread                                       X
’bread’  =  bread                                       V
Bread  =  bread                                         X
bread  =  sausage                                       X
food(bread)  =  bread                                   X
food(bread)  =  X                                       V   - X = bread
food(X)  =  food(bread)                                 V   - X = bread
food(bread,X)  =  food(Y,sausage)                       V   - X = sausage / Y = bread
food(bread,X,beer)  =  food(Y,sausage,X)                X   - cause X cant be sausage and beer
food(bread,X,beer)  =  food(Y,kahuna_burger)            X   - cause 3 arities vs 2 arities
food(X)  =  X                                           V   - X = food(X)
meal(food(bread),drink(beer))  =  meal(X,Y)             V   - X  = food(bread) / Y = drink(beer)
meal(food(bread),X)  =  meal(X,drink(beer))             X   - cause X cant be food(bread) and drink(beer)

Exercise  2.2 We are working with the following knowledge base:

   house_elf(dobby).
   witch(hermione).
   witch(’McGonagall’).
   witch(rita_skeeter).
   magic(X):-  house_elf(X).
   magic(X):-  wizard(X).
   magic(X):-  witch(X).

Which of the following queries are satisfied? Where relevant, give all the variable instantiations that lead to success.

?-  magic(house_elf).                                           X, there is no house_elf(house_elf)
?-  wizard(harry).                                              X, no wizard predicate
?-  magic(wizard).                                              X, again - there is no wizard here
?-  magic(’McGonagall’).                                        I think this should be satisfied and x = McG...
?-  magic(Hermione).                                            Yes... Hermione is variable and will instantiate with dobby, hermione, mcGon.. and rita
Draw the search tree for the query magic(Hermione) .


Exercise  2.3 Here is a tiny lexicon (that is, information about individual words)
and a mini grammar consisting of one syntactic rule
(which defines a sentence to be an entity consisting of five words in the following order:
a determiner, a noun, a verb, a determiner, a noun).

   word(determiner,a).
   word(determiner,every).
   word(noun,criminal).
   word(noun,’big  kahuna  burger’).
   word(verb,eats).
   word(verb,likes).
   
   sentence(Word1,Word2,Word3,Word4,Word5):-
         word(determiner,Word1),
         word(noun,Word2),
         word(verb,Word3),
         word(determiner,Word4),
         word(noun,Word5).
What query do you have to pose in order to find out which sentences the grammar can generate? 
List all sentences that this grammar can generate in the order that Prolog will generate them in.

I assume sentence(W1, W2, W3, W4, W5)
This will start with
A criminal eats a criminal
Followed dobby
A criminal eats a big_kahuna_burger

Because of backtracking, the new result wil start from the Word5 everytime to look for a different route

*/