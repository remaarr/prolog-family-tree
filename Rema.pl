% Facts: males
male(mohammed).
male(abdulaziz).
male(omer).

% Facts: females
female(foz).
female(rema).
female(remas).
female(rawan).

% Facts: parent(Parent, Child)
parent(mohammed, rema).
parent(mohammed, remas).
parent(mohammed, rawan).
parent(mohammed, abdulaziz).
parent(mohammed, omer).

parent(foz, rema).
parent(foz, remas).
parent(foz, rawan).
parent(foz, abdulaziz).
parent(foz, omer).

% Rules
father(X, Y)  :- male(X),   parent(X, Y).
mother(X, Y)  :- female(X), parent(X, Y).
sister(X, Y)  :- female(X), parent(P, X), parent(P, Y), X \= Y.
brother(X, Y) :- male(X),   parent(P, X), parent(P, Y), X \= Y.
