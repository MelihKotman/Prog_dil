insan(ali).
insan(ayse).
sicak(afrika).
buyuk(karpuz, elma).
buyuk(karpuz, cilek).

seviyor(romeo, juliet).
seviyor(juliet, romeo).
seviyor(thor, juliet).

sevgili(X, Y) :- seviyor(X, Y), seviyor(Y, X). % X ve Y birbirlerini seviyorlarsa sevgilidirler. :- ifadesi "if" anlamına gelir.

annesi(ayse, ali).
annesi(fatma, ayse).
annesi(hayriye, fatma).
annesi(pakize, hayriye).
anneannesi(A, B) :- annesi(A, C), annesi(C, B).

elemani(X, [X | Xs]).
elemani(X, [Y | Ys]) :- elemani(X, Ys).

sonaEkle([], Y, [Y]).
sonaEkle([X | Xs], X, [X | Ys]) :- sonaEkle(Xs, Y, Ys).