%Построить матрицу n x n случайных чисел, построить полином, корнями
%которого являются собственные значения этой матрицы. Проверить, является
%ли матрица корнем этого полинома.
n = 4;
characteristic_polynomial(n);
function characteristic_polynomial(n)
clc
    syms x Q
    Q = 1;
    A = randi(5,n); %random matrix
    fprintf('Generated matrix A\n');
    disp(A);
    e = eig(A); %eigenvalues
    for i = 1:length(e)
        Q = Q*(x-e(i));
    end
    P = sym2poly(Q);
    fprintf('Characteristic polynomial of matrix A\n');
    disp(P);
    G = polyval(P,A);
    fprintf('Matrix passed as argument to characteristic polynomial\n');
    disp(G);
    n = norm(G,'fro');
    fprintf('Frobenius norm %.4f\n',n);
    if n < 10^3
        disp('Given matrix is a root of its characteristic polynomial.');
    else
        disp('Given matrix is not a root of its characteristic polynomial.');
    end
end