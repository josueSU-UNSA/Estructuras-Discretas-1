% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.
%arbol
%Hechos
hombre(nestor).
hombre(rafael).
hombre(alberto).
hombre(josue).




espadre(nestor,rafel).
espadre(nestor,alberto).
espadre(rafael,josue).
espadre(alberto,jair).









%Reglas
esabuelo(X,Y):-
    espadre(X,A),
    espadre(A,Y).

eshermano(X,Y):-
    espadre(A,X),
    espadre(A,Y),
    X \== Y.
estio(X,Y):-
    espadre(A,Y),
    eshermano(A,X).




