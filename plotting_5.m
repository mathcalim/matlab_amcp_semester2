%plot three functions from section 14.
%Задание 1. Декартов лист
subplot(2, 2, 1);
syms x y;
fimplicit(x.^3 + y.^3 -3*a.*x.*y, [-10, 10], '-r','LineWidth', 3);
%Задание 2. Строфоида
subplot(2, 2, 2);
phi = linspace(-pi, pi, 250);
a = 2;
x = -a*cos(2*phi);
y = -a*cos(2*phi).*tan(phi);
plot(x, y, '-g');
%Задание 3. Овал Кассини
subplot(2, 2, [3, 4]);
syms x y;
patterns = ['-p', '+p', '*p'];
for c = 1:10
    fimplicit((x.^2+y.^2).^2-2*(x.^2-y.^2)+1-(c./4).^4 ...
    , patterns(1+mod(c, 3)), 'LineWidth', 1.5);
    hold on
end