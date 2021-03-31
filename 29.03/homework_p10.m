%10. Найти НОД полиномов f и g и его линейное представление:
%Дополнение: задача оценки чувствительности корней, т.е. оценки их
%изменения при некотором возмущении коэффициентов полинома

%Оценить погрешность вычислений корней полинома Pi_{i=1}^{n}(x-i).
%посмотреть, как изменятся корни при введении малых возмущений: при n=20
%прибавить к коэффициенту при x^19 величину 1e-7 т.е. внести в него малое
%возмущение примерно в 10-м знаке, и повторить расчет.

P1 = [1 2 -1 -4 2];
P2 = [1 1 -1 -2 -2]; %this can be changed
gcd_and_linear_representation(P1,P2);

%% This is a classic example in numerical analysis, apparently!
%We have to generate the polynomial (x-1)...(x-20), it is probably easier
%for me to do so using symbolic manipulation. I'm fairly certain that there
%is a more combinatorically efficient way of calculating the coefficients.
clc
syms x
P = 1;
for i = 1:20
    P = P*(x-i);
end
perturbation = 1e-7;
P = expand(P);
disp('Полученный полином P');
disp(P);
P = sym2poly(P); %Converting to array form
fprintf('Очевидно, корни P суть все целые числа от 1 до 20\n');
disp(1:20);
fprintf('Коэффициент при x^19: %d\n', P(2));
disp('Вносим малое возмущение 1e-7 в этот коэффициент\n');
P(2) = P(2)+perturbation;
R2 = reshape(flip(roots(P)),[],4)';
fprintf('Вычислим новые корни\n');
disp(R2);
fprintf('Вывод следующий: При таком малом возмущении первые 7 корней не сильно\n');
fprintf('изменилось. В 8,9,10-ые корни внесены значительные изменения. Остальные\n');
fprintf('корни стали комплексными. Т.е. корни данного полинома довольно чуствительны.\n');
%% Our function
function gcd_and_linear_representation(P1,P2)
clc
%this function looks really nasty
    disp('Received two polynomials:');
    disp(poly2sym(P1));
    disp(poly2sym(P2));
    [G,S,T] = gcd(poly2sym(P1),poly2sym(P2));
    disp('GCD of polynomials:');
    disp(poly2sym(G));
    disp('Linear representation of GCD:');
    disp(S);
    disp('*');
    disp(poly2sym(P1));
    disp('+');
    disp(T);
    disp('*');
    disp(poly2sym(P2));
end