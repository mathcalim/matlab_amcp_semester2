%% Primitive DNA model
%С помощью функции plot3 нарисовать две винтовых линии разного цвета,
%симболизирующих примитивную модель ДНК
t = -2*pi:0.05:2*pi;
x = cos(t);
y = sin(t);
plot3(x,y,t,'g');
hold on
t = -2*pi:0.05:2*pi;
x = cos(t-pi);
y = sin(t-pi);
plot3(x,y,t,'r');
hold on
%"Движемся" по первой винтовой линии, после того, как посчитал,
%уравнение нормальной плоскости есть sint0*x-cost0*y-z+t0=0
%параметры точек пересечения определяются формулой sin(t0-t+pi)+t0-t=0
u  = -2*pi:pi/6:2*pi;
v = zeros(1, length(u));
syms q
for i = 1:length(u)
    v(1,i) = vpasolve(sin(u(i)-q+pi)+u(i)-q, q);
    line([cos(u(i)),cos(v(i)-pi)],[sin(u(i)),sin(v(i)-pi)],[u(i),v(i)]);
end
plot3(cos(u),sin(u),u,'*m');
plot3(cos(v-pi),sin(v-pi),v,'diamondb');
axis equal
%This could easily have been done without finding the normal plane :)