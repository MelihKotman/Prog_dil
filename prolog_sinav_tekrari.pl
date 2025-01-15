/*
cok satirli yorumunuz
*/
% tek satirli yorumunuz
/*
:- initialization hello_world, halt.
%:- initialization main, halt. yani main fonksiyonunu cagirir
% halt komutu ile program sonlandirilir
hello_world :- write('Hello, World!'), nl.
%main :- write('Hello, World!'), nl.
*/
/*
%Facts
insan(ali).
insan(ayse).
sicak(afrika).
anne(ayse, ali).
anne(fatma, ayse).
anneanne(A,C) :-
     anne(A,B), anne(B,C).

insan(X) :- %eger X in anne ve anneanne si varsa X insan dir
     anne(X,_).

arkadasi(ali,selami).
arkadasi(ali,veli).
arkadasi(ayse,veli).
*/

%eger A, L'nin elemanı ise basarili olur
eleman(X,[X | Xs]).
eleman(Y,[X | Xs]) :- eleman(Y,Xs).

%eleman(X,[1,2,3,4,5,6,7,8,9,10]). %X=1 doner
%eleman(3,[1,2,3,4,5,6,7,8,9,10]). %true
%eleman(11,[1,2,3,4,5,6,7,8,9,10]). %false

%L1'in sonuna Y eklenince L2 ise basarili olur
sonaEkle([],Y,[Y]).
sonaEkle([X | Xs],Y,[X | Ys]) :- sonaEkle(Xs,Y,Ys).

%sonaEkle([1,2,3,4,5],6,L). %L=[1,2,3,4,5,6] doner
%sonaEkle([1,2,3,4,5],6,[1,2,3,4,5,6]). %true

% eger L1 ve L2 listeleri birlesip L3 listesini olusturuyorsa basarili olur
birlestir([],L,L).
birlestir([X | Xs],Y,[X | Zs]) :- birlestir(Xs,Y,Zs).

%birlestir([1,2,3],[4,5,6],L). %L=[1,2,3,4,5,6] doner
%birlestir([1,2,3],[4,5,6],[1,2,3,4,5,6]). %true

%eger L1 listesi ters cevrilince L2 listesi olusuyorsa basarili olur
tersCevir([],[]).
tersCevir([X | Xs],Y) :- tersCevir(Xs,Z), sonaEkle(Z,X,Y).

%tersCevir([1,2,3,4,5],L). %L=[5,4,3,2,1] doner
%tersCevir([1,2,3,4,5],[5,4,3,2,1]). %true

%eger L1 listesindeki en buyuk elemani bulursa basarili olur
enBuyuk([X],X). 
enBuyuk([X | Xs],Max) :-
    enBuyuk(Xs,Z),
    X >= Z,
    Max = X.
enBuyuk([X | Xs],Max) :-
    enBuyuk(Xs,Z),
    X < Z,
    Max = Z.
% iki durum vardir X ile baslar ve X en buyuk elemandir ya da X en buyuk elemandan buyuk degildir ona gore devam eder.
%alternatif cozum max fonksiyonu kullanarak
enBuyuk([X], X).
enBuyuk([X|Xs], Max) :- 
    enBuyuk(Xs, TailMax),
    Max is max(X, TailMax). % max fonksiyonu en buyuk elemani bulur

%enBuyuk([1,2,3,4,5],5). %true
%enBuyuk([1,2,3,4,5],6). %false
%enBuyuk([1,2,3,4,5],X). %X=5 doner

%eger L1 listesindeki en kucuk elemani bulursa basarili olur
/*enKucuk([X],X).
enKucuk([X | Xs],Min) :- enKucuk(Xs,Z), X =< Z, Min = X.
enKucuk([X | Xs],Min) :- enKucuk(Xs,Z), X > Z, Min = Z.
*/
%alternatif cozum min fonksiyonu kullanarak
enKucuk([X], X).
enKucuk([X|Xs], Min) :-
    enKucuk(Xs, TailMin),
    Min is min(X, TailMin). % min fonksiyonu en kucuk elemani bulur
%enKucuk([1,2,3,4,5],1). %true
%enKucuk([1,2,3,4,5],0). %false
%enKucuk([1,2,3,4,5],X). %X=1 doner

%L1 listesindeki elemanlarin toplami L2 olursa basarili olur
topla([X],X).
topla([X | Xs],Sum) :- topla(Xs,Z), Sum is X + Z.

%topla([1,2,3,4,5],15). %true
%topla([1,2,3,4,5],16). %false
%topla([1,2,3,4,5],X). %X=15 doner

%L1 listesindeki elemanlarin carpimi L2 olursa basarili olur
carp([X],X).
carp([X | Xs],Product) :- carp(Xs,Z), Product is X * Z.

%carp([1,2,3,4,5],120). %true
%carp([1,2,3,4,5],121). %false
%carp([1,2,3,4,5],X). %X=120 doner

%L1 listesin uzunlugu dogru ise basarili olur
uzunluk([],0).
uzunluk([_ | Xs],L) :- uzunluk(Xs,Ls), L is Ls + 1.

%uzunluk([1,2,3,4,5],5). %true
%uzunluk([1,2,3,4,5],6). %false
%uzunluk([1,2,3,4,5],X). %X=5 doner

%L1 listesinin ortalamasi L2 olursa basarili olur
ortalama([X],X).
ortalama(L,Mean) :- 
    topla(L,Sum),
    uzunluk(L,Length),
    Mean is Sum / Length.

%ortalama([1,2,3,4,5],3). %true
%ortalama([1,2,3,4,5],4). %false
%ortalama([1,2,3,4,5],X). %X=3 doner

%notrace.
%nodebug.

%query :  ara(veli, Tel, [kisi(ali, 123), kisi(veli, 234), kisi(ayse, 123)]).

% kisi(Ad, Tel) yapısında Ad'ı Ad olan kişinin telefon numarasını bulur

%ayni ada sahip kisiler olmasın.

ara(Ad, Tel, [kisi(Ad, Tel) | Gerisi]).
ara(Ad,Tel,[_ | Gerisi]) :- ara(Ad,Tel,Gerisi).

%bunu calistirinca tum rehberi tarar ve Ad=veli olan kisinin telefon numarasini bulur 

%ama biz bulunca durmasini istiyoruz bunun icin
ara2(Ad, Tel, [kisi(Ad, Tel) | _]) :- !.
ara2(Ad,Tel,[_ | Gerisi]) :- ara2(Ad,Tel,Gerisi).

%! işareti ile arama işlemi yapılır. Eğer bulunursa arama işlemi durur.

%faktoriyel islemi
factorial(0,1) :- !.
factorial(N,Fact) :-
    N > 0,
    N_1 is N - 1,
    factorial(N_1,N_1_Fact),
    X is N * N_1_Fact.

%factorial(5,120). %true
%factorial(5,121). %false
%factorial(5,X). %X=120 doner

%fibo islemi
fibo(0,0) :- !.
fibo(1,1) :- !.
fibo(2,1) :- !.
fibo(N,F) :-
    N > 2,
    N_1 is N - 1,
    N_2 is N - 2,
    fibo(N_1,F_1),
    fibo(N_2,F_2),
    F is F_1 + F_2.

%fibo(5,5). %true
%fibo(5,6). %false
%fibo(5,X). %X=5 doner