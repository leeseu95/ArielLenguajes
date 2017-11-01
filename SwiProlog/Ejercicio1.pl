famoso(pedro).
famoso(juan).
hombre(juan).
hombre(simon).
hombre(roberto).
hombre(pedro).

padre(pedro, juan).
padre(roberto, pedro).
padre(simon, roberto).
padre(manuel, simon).
padre(manuel, doroteo).

/*ancestro(X, Y) :- padre(X,Y). */
/*ancestro(X, Y) :- padre(X,Z), ancestro(Z,Y). */

/*feliz(X) :- write(X), hombre(X), famoso(X).*/

elementosLista([], Cont, Cont).
elementosLista([_|T], Cont, X) :- Z is Cont+1, elementosLista(T, Z, X).

/*elementosLista([1,2,3,4,5], 0, X).*/

igualesLista([], []).
igualesLista([Head1|Tail1], [Head2|Tail2]) :- Head1 =:= Head2, igualesLista(Tail1, Tail2).

splitea(Lista, A, B):- append(A, B, Lista), length(A,X), length(B,Y), X=:=Y, !.

maxList([], V, V). 
maxList([H|T], V, R):- (H > V -> maxList(T, H, R); maxList(T, V, R))
maxL([H|T], M):- maxList(T, H, M)

/*splitea([1,2,3,4,5,6], A, B).*/