menu :- write('Escolha uma opcao'),nl,
    write('1-Calcular Fibonacci'),nl,
    write('2-Calcular Factorial'),nl,
    write('3-Sair'),nl,
    write('opc: '),
    ler(X),
    chamar(X, R),
    write(R).

ler(X) :- read(X).

chamar(X, Res) :-( X == 1 -> read(R), fibonacci(R, 0, 1);
                   X == 2 -> read(R), factorial(R, Res);
                   X == 3 -> initialization(menu)).


fibonacci(N,A,B):-
        N<2, write(' \n Serie de fibonacci completa!');
        C is A+B,
        write(C),write(' '),
        D is B,
        E is C,
        N1 is N-1,
        fibonacci(N1,D,E).


factorial(0, 1).
factorial(N, F) :- ( (N > 0) -> (N1 is N-1), factorial(N1, F1), (F is N*F1) ; (N<0) -> (N1 is N+1), factorial(N1, F1), (F is N*F1)).












