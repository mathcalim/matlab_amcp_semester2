%Разложить на простейшие дроби
%1. x^2/(x-1)(x+2)(x+3)
%2. 3+x/(x-1)(x^2+1)
%3. x^2/(x^4-1)
%We have to perform some multiplication and expansion to get
%the desired vectors of coefficients. 
clc
syms u
P1 = [2 0 0];
Q1 = sym2poly((u-1)*(u+2)*(u+3));
P2 = [1 3];
Q2 = sym2poly((u-1)*(u^2+1));
P3 = [1 0 0];
Q3 = [1 0 0 0 -1];
%В каждом примере видно, что отсутствует целая часть, так как у нас есть
%только правильные дроби. Поэтому, не буду выводить k1,k2,k3.
[r1,s1,k1] = residue(P1,Q1);
fprintf('Пример 1\n');
disp(r1);
disp(s1);
[r2,s2,k2] = residue(P2,Q2);
fprintf('Пример 2\n');
disp(r2);
disp(s2);
[r3,s3,k3] = residue(P3,Q3);
fprintf('Пример 3\n');
disp(r3);
disp(s3);