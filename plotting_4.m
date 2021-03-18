%plot three functions from section 13.
%we will plot the graphs of the last functions in each section
%Задание 1
subplot(1, 3, 1)
x = linspace(-2*pi, 2*pi, 200);
y = (x.*(sin(pi*x))).^2;
plot(x, y, '-g');
grid on;
title('wavy lines');
%Задание 2
subplot(1, 3, 2);
a = 1;
n = 4;
phi = linspace(-pi, pi, 200);
R = a + abs(n*phi);
x = R.*cos(phi);
y = R.*sin(phi);
plot(x, y, '+r');
title('heart')
grid on;
%<3
%Задание 3
subplot(1, 3, 3)
phi = linspace(0, 2*pi, 200);
phi0 = pi/4;
n = 1;
m = 2;
x = sin(m*phi).*cos(n*phi+phi0);
y = cos(m*phi).*sin(n*phi+phi0);
plot(x, y, '-ob');
title('Snake');
xlabel('time of the day');
ylabel('my desire to do homework');
grid on