menu :- write('Escolha uma opcao'),nl,write('1-area circ'),nl,
    write('2-area trapecio'),nl,write('opc: '),
    ler(X),chamar(X, R), write(R).

ler(X) :- read(X).

chamar(X, Res) :- (X == 1 -> read(R),area(R,Res);
     X == 2 -> read(BM),read(Bm),read(H), areaTrapezio(BM, Bm, H, Res);
     read(A),read(B),isMinimum(A,B, Res)).

isMinimum(X,Y, R) :- (X < Y -> R is X ; R is Y).

area(R, Z) :- Z is 3.14 * R * R.

areaTrapezio(BM, Bm, H, Y) :- Y is ((BM + Bm) * H) / 2.