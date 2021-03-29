%2. Найти корни r1,...,rn полинома P(x)=a_nx^n+...+a_0 на отрезке
%-max|rk|<x<max|rk|. Построить крафик кривой f = P(x), касательной к нему в
%точке x1 = 0.5max|rk| и восстаносить единичную нормаль в точке x2 =
%-0.5max|rk|. Вычислить все корни полинома и построить окружность в
%комплескной плоскости, содержащую их.
%a) P(x) = x^5 + 0.1x^4 + 0.2x^3 - 0.2x^2 - 2x + 1
clc

P = [1 0.1 0.2 -0.2 -2 1];
R = roots(P); %вектор-столбец всех корней
R_abs = abs(R);
disp(R_abs);
%M есть абсолютное значение корня с наибольшим абсолютным значением
M = max(R_abs);
disp(M);
%Находим индексы всех корней, которые вещественные и абсолютные значения
%которых меньше чем M
id = (R==real(R)&abs(R)<M);
disp('Все корни на отрезке -max|rk|<x<max|rk|');
disp(R(id)');

subplot(211);
x = linspace(-M,M);
F = polyval(P,x);
plot(x,F,'-k');
hold on
plot(R(id),zeros(size(R(id))),'or'); %plot roots within given domain
dP = polyder(P); %polynomial differentiation
x1 = 0.5*M;
y1 = polyval(P,x1);
text(x1,y1,'  x1');
plot(x1,y1,'ko');
dy1 = polyval(dP,x1); %gradient of tangent at x1
Y1 = dy1*(x-x1)+y1;
plot(x,Y1,'-m');

x2 = -0.5*M;
y2 = polyval(P,x2);
plot(x2,y2,'ko');
text(x2,y2,'  x2');
dy2 = polyval(dP,x2); %gradient of tangent at x2
m_normal = -1/dy2;
x3 = x2+cos(atan(m_normal));
y3 = y2+sin(atan(m_normal));
line([x2 x3],[y2 y3],'Color','Magenta');

grid on
line([0,0], ylim, 'Color', 'k');
line(xlim, [0,0], 'Color', 'k');
axis equal
axis on

subplot(212);
plot(real(R),imag(R),'ok');
hold on
grid on
fimplicit(@(x,y) x.^2+y.^2-M^2);
axis equal
title('окружность на комплексной плоскости, содержащая все корни');