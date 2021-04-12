%7. Построить график функции, изобразить асимптоты функции y =
%e^(1/(1-x^2))/(1+x^2) на интервале [-7,7]. Найти и указать на графике точки
%максимума и минимума, а также точки перегиба

clc
clear
syms x real;
y = exp(1/(1-x^2))/(1+x^2);
dy = diff(y);
d2y = diff(dy);
disp(d2y);

f = matlabFunction(y);
df = matlabFunction(dy);
d2f = matlabFunction(d2y);

t = linspace(-7,7,1000);
Y = f(t);
mins = islocalmin(Y);
maxs = islocalmin(-Y);
infs = vpasolve(d2y); %тут получилось, что нет точек перегиба, так как 
%единственное решение является уже локальным минимуном

plot(linspace(-7,-1),f(linspace(-7,-1)),'-k','LineWidth',1.5);
hold on
plot(linspace(-.99,.99),f(linspace(-.99,.99)),'-k','LineWidth',1.5);
hold on
plot(linspace(1,7),f(linspace(1,7)),'-k','LineWidth',1.5);
hold on
plot(t(mins),Y(mins),'ro','MarkerFace','r','MarkerEdgeColor','k');
hold on
plot(t(maxs),Y(maxs),'go','MarkerFace','g','MarkerEdgeColor','k');
hold on
xline(-1,'--b','LineWidth',1.5);
hold on
xline(1,'--b','LineWidth',1.5);
hold on
yline(0,'--b','LineWidth',1.5);
hold on
ylim([-.5 5])
legend('function','','','minimums','maximums','asymptotes');
title('$$y = \frac{e^{\frac{1}{1-x^2}}}{1+x^2}$$','interpreter','latex');