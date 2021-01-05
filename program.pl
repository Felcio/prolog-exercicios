homem(abel).
homem(adao).
homem(jose).
homem(cain).
homem(joao).
homem(moises).

mulher(eva).
mulher(ana).
mulher(maria).
mulher(laura).

casal(adao,eva).
casal(eva,adao).
casal(abel,ana).
casal(ana,abel).
casal(cain,maria).
casal(maria,cain).

pai(adao,cain).
pai(adao,abel).
pai(cain,moises).
pai(cain,laura).
pai(abel,joao).
pai(abel,jose).

mae(eva,cain).
mae(eva,abel).
mae(maria,moises).
mae(maria,laura).
mae(ana,jose).
mae(ana,joao).

filho(X,Y):-homem(X),(pai(Y,X);mae(Y,X)).
filha(X,Y):-mulher(X),(pai(Y,X);mae(Y,X)).


neto(X,Y):-homem(X),(pai(Y,Z);mae(Y,Z)),(pai(Z,X);mae(Z,X)).
neta(X,Y):-mulher(X),(pai(Y,Z);mae(Y,Z)),(pai(Z,X);mae(Z,X)).