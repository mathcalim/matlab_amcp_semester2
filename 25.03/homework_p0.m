%%Задание
%построить касательную к кривой x = sint, y = 2cost, t\in[0,6*pi] в
%точке t_0 = 7*pi/2
t=0:0.05:6*pi;
x=sin(t);
y=2*cos(t);
plot3(x,y,t);
%Уравнение касательной
%rho(u) = [sin(t0)+u*cos(t0) 2*cos(t0)-2*u*sin(t0) t0]
%подставим u = 1, у нас имеюся две точки.
t0 = 7*pi/2;
x1 = sin(t0) - cos(t0);
x2 = sin(t0) + cos(t0);
y1 = 2*cos(t0) - 2*sin(t0);
y2 = 2*cos(t0) + 2*sin(t0);
z1 = t0;
z2 = t0;
line([x1,x2],[y1,y2],[z1,z2]);
hold on
plot3(sin(t0),2*cos(t0),t0,'*');