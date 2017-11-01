maxList([], V, V). 
maxList([H|T], V, R):- H > V -> maxList(T, H, R); maxList(T, V, R).
maxL([H|T], M):- maxList(T, H, M).

%maxL([5,1,100,55,25], M).