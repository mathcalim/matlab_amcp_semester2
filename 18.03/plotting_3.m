%Условия: 1 любой из #8-11, #12
%Для тренировки сделаем 8, 10, и 12
%Задание 8
subplot(2, 2, 1)
a = 100;
b = 2;
n = 4;
k = 14;
m = 5;
phi = linspace(-pi/2,3*pi/2,200);
r = (a./(a+(phi-pi/2).^n)).*(b-sin(k*phi)-cos(m*phi));
x = r.*cos(phi);
y = r.*sin(phi);
plot(x, y, '-g')
grid on
title('Задание 8')
%Задание 10
subplot(2, 2, 2)
a = 5;
b = 10;
n = 12;
m = 9;
phi0 = pi/4;
x = a*sin(n*phi + phi0);
y = b*sin(m*phi);
plot(x, y, '-y')
title('Задание 10')
grid on
%Задание 12
subplot(2, 2, [3, 4])
t = linspace(-5,5,400);
a = 1/4;
b = 1/16;
m = 8;
n = 8;
x = cos(t)-a*cos(m*t)+b*sin(n*t);
y = sin(t)+a*sin(m*t)+b*cos(n*t);
for k = 1:30
    plot(x/k, y/k, '-r');
    hold on
end
grid on
title('Задание 12');



