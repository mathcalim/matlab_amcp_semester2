%3) Найти экстремумы функции sin(x)/(x^2+1), заданной в символьном виде.
%(можно использовать функцию matlabFunction). Отобразить график функции на
%промежутке [-5,5] и точки экстремума

syms x
y = sin(x)/(x^2+1);
t = linspace(-5,5);
f = matlabFunction(y);
Y = f(t);
plot(t,f(t),'-k','LineWidth',1.5);
hold on
title('$$y = \frac{sin(x)}{x^{2}+1}$$','interpreter','latex');
mins = islocalmin(Y);
maxs = islocalmin(-Y);
plot(t(mins),Y(mins),'ro','MarkerFace','r');
plot(t(maxs),Y(maxs),'go','MarkerFace','g');
