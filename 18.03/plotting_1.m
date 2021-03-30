x = [-10:0.05:10];
y = (x - 2).*sqrt((1+x)./(1-x));
y1 = 2*x./(1 + x.^2);
y2 = sqrt(sin(pi*sqrt(x)));
y3 = (x + abs(x)).*sqrt(x.*(sin(pi*x)).^2);
subplot(2, 2, 1)
plot(x, y, '-r'); title('Серпантин Ньютона')
subplot(2, 2, 2)
plot(x1, y1, '-g'); title('Graph 2')
subplot(2, 2, 3)
plot(x1, y2, '-b'); title('Graph 3')
subplot(2, 2, 4)
plot(x1, y3, '-y'); title('Graph 4')
grid on