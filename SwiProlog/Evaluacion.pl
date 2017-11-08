/*Evaluacion Seung Lee - A01021720*/

/*dividirListas([], Numero, Menores, Mayores, Menores, Mayores).
dividirListas([H|T], Numero, Menores, Mayores, ResMenores, ResMayores):- (H > Numero -> append([H], Mayores, B); 
                                                                                        append([H], Menores, A)), 
                                                         dividirListas(T, Numero, A, B, ResMenores, ResMayores).*/

dividirListas([], Numero, Menores, Mayores, Menores, Mayores).
dividirListas([H|T], Numero, Menores, Mayores, ResMenores, ResMayores):- H > Numero, append([H], Mayores, B), dividirListas(T, Numero, Menores, B, ResMenores, ResMayores).
dividirListas([H|T], Numero, Menores, Mayores, ResMenores, ResMayores):- H < Numero, append([H], Menores, A), dividirListas(T, Numero, A, Mayores, ResMenores, ResMayores).
dividirListas([H|T], Numero, Menores, Mayores, ResMenores, ResMayores):- H =:= Numero, dividirListas(T, Numero, Menores, Mayores, ResMenores, ResMayores).