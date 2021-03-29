%Вычислить значение полинома f(x_0) и его производной при x=x_0. Проверить
%найденных значений.
clc
P1 = [1 -2 6 -10 16];
x1 = 4;
P2 = [1 1+2*i 0 -(1+3*i) 0 7];
x2 = -2-i;
%running self-made horner's method
test_horner(P1,x1);
test_horner(polyder(P1),x1);
test_horner(P2,x2);
test_horner(polyder(P2),x2);
function out = horner(coeffs,in)
    prev = 0;
    curr = 0;
    for i=1:length(coeffs)
        curr = coeffs(i)+prev*in;
        prev = curr;
    end
    out = curr;
end

function test_horner(coeffs,in)
    fprintf('====================================\nInput:');
    disp(coeffs);
    inbuilt = polyval(coeffs,in);
    h = horner(coeffs,in);
    fprintf('value of polynomial with inbuilt function: %.2f\n',inbuilt);
    fprintf('value of polynomial by Horner''s method: %.2f\n',h);
    if inbuilt==h
        fprintf('Success\n');
    end
end