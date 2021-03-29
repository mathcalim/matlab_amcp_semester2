%7. построить полином наименьшей степени по таблице значений, найти корни
%полинома и построить график на отрезке, содержащем корни.
%Будем строить полином Лагранжа, известный нам из курса алгебры
%% First data set
clc
n = 5; %Вы сами это изменяйте, пожалуйста
X1 = zeros(1,n);
Y1 = zeros(1,n);
for i = 1:n
    X1(i) = i;
    Y1(i) = 1/i;
end
lagrange_polynomial(X1,Y1);
%% Second data set
X2 = [-1 0 1 2 3];
Y2 = [6 5 0 3 2];
lagrange_polynomial(X2,Y2);
%% Our function

function lcoefficients = lagrange_polynomial(X,Y)
%this function takes two arrays X and Y of equal length that contain the
%points that the Lagrange polynomial passes through. It returns an array of
%coefficients of the Lagrange polynomial, and plots the graph on the
%segment containing all the roots.
    syms x L
    L = 0;
    for i = 1:length(X)
        syms S; %S stands for summand
        S = Y(i);
        for j = 1:length(X)
            if i~=j
                S = S*(x-X(j))/(X(i)-X(j));
            end
        end
        L = L+S;
    end
    lcoefficients = sym2poly(simplify(L));
    disp('Coefficients of the Lagrange polynomial:');
    disp(lcoefficients);
    disp(min(X));
    disp(max(X));
    u = linspace(min(X),max(X));
    v = polyval(lcoefficients,u);
    plot(u,v,'-m','LineWidth',1.5);
    hold on
    plot(X,Y,'ok', 'MarkerFaceColor','r');
    title('Lagrange polynomial from given dataset');
end