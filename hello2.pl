uzunluk([], 0).
uzunluk([_ | Xs],L) :- 
         uzunluk(Xs,Ls), 
         L is Ls + 1.
% u (x:xs) = 1 + u(xs) Haskell Kodu
f(0, 1) :- !.
f(N, X) :- 
        N_1 is N - 1,
        f(N_1, Y),
        X is N * Y.

el_at([X | _], X, 0) :- !.
el_at([_ | Rest], X ,Y) :-
    el_at(Rest,X,Z),
    Y is Z + 1.

top([X], X) :- !.
top([X | Rest], Y) :-
    top(Rest, Z),
    Y is X + Z.

    %define clause grammar bakmana gerek yok
    %listeler uzerinde temel islemler sorusu gelebilir ters cevir  en kucuk veya en buyuk eleman bulma sorusu olacak bir tane
    %init ve string str dumber methodlardan birini soracak