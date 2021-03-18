psi = [0:0.05:2*pi];
x1 = (sin(psi)./psi).*cos(psi)
y1 = (sin(psi)./psi).*sin(psi)
subplot(1, 2, 1)
plot(x1, y1, '-r')

x = linspace(0, 2);
y = humps(x)
subplot(1, 2, 2)
plot(x, y)
%marking the maximum point with a red circle
[y_max, i] = max(y);
x_max = x(i)
hold on
plot(x_max, y_max,'or')%o - circle, r - red
%marking points where 20 <= y <= 40 with a green circle
hold on
k = find((humps(x)>= 20) & (humps(x) <= 40))
plot(x(k), humps(x(k)), 'og')

grid on