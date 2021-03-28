%% 3. Построить поверхности %a) z = axe^(-x^2-y^2)
%в принципе можно в livescript, пускай a = 1
a = 1;
x = -5:0.1:5;
y = -5:0.1:5;
[X,Y] = meshgrid(x,y);
Z = a*X.*exp(-X.^2-Y.^2);
subplot(1,2,1)
mesh(X,Y,Z);
subplot(1,2,2)
surfc(X,Y,Z);
%% b.однополостный гиперболоид вращения
a = 1;
c = 2;
[u,v] = meshgrid(-2:0.1:2, -pi:pi/8:pi);
x = a*cosh(u).*cos(v);
y = a*cosh(u).*sin(v);
z = c*sinh(u);
subplot(1,2,1)
mesh(x,y,z);
subplot(1,2,2)
surfc(x,y,z);
%% c.параболоид вращения
p = 2;
[r,phi] = meshgrid(0:0.1:4, -pi:pi/8:pi);
x = r.*cos(phi);
y = r.*sin(phi);
z = r.^2/(2*p);
subplot(1,2,1)
mesh(x,y,z);
subplot(1,2,2)
surfc(x,y,z);
%% d.двуполостный гиперболоид вращения
a = 1;
c = 1;
[u,v] = meshgrid(-2:0.1:2, -pi:pi/8:pi);
x = a*sinh(u).*cos(v);
y = a*sinh(u).*sin(v);
z = c*cosh(u);
z1 = -c*cosh(u);
subplot(1,2,1)
mesh(x,y,z);
hold on
mesh(x,y,z1);
subplot(1,2,2)
surfc(x,y,z);
hold on
surfc(x,y,z1);
%% e.Гиперболический параболоид
a = 1;
b = 1;
[alpha, beta] = meshgrid(-1:0.1:1,-1:0.1:1);
x = a*alpha.*cosh(beta);
y = b*alpha.*sinh(beta);
z = alpha.^2;
surf(x,y,z);
%%  f.Параболический цилиндр
a = 1;
[u,v] = meshgrid(-2:0.1:2,-1:0.1:2);
x = a*u.^2;
y = 2*a*u;
z = v;
surf(x,y,z);

%% g.Круговой тор
clc
a = 2;
b = 3;
[u,v] = meshgrid(0:0.1:2,0:pi/20:2*pi);
x = (a+b*cos(v)).*cos(u);
y = (a+b*cos(v)).*sin(u);
z = b*sin(v);
surf(x,y,z);

%% h.Эллипсоид вращения
a = 1;
b = 2;
[u,v] = meshgrid(0:pi/20:2*pi, -pi/2:pi/20:pi/2);
x = a*cos(u).*cos(v);
y = a*sin(u).*cos(v);
z = b*sin(v);
surfc(x,y,z);

%% i.Гиперболо-логарифмическая поверхность
a = 2;
b = 4;
[z,beta] = meshgrid(0:0.1:5,-pi:pi/20:pi);
r = a*(z+b).^2.*log(z+b);
x = r.*sin(beta);
y = r.*cos(beta);
surf(x,y,z);

%% j.поверхность вращения гиперболы
b = 2;
[beta,r] = meshgrid(-pi:pi/20:pi,1:0.1:5);
x = r.*cos(beta);
y = r.*sin(beta);
z = b./r;
surf(x,y,z);

%% k.поверхность деформированной сферы
clc
a = 3.5;
[u,v] = meshgrid(-pi:pi/20:pi,-pi:pi/20:pi);
x = a*cos(u).*cos(v);
y = a*cos(u).*sin(v);
z = sin(u-a);
surf(x,y,z);

%% l.поверхность с затухающими окружными волнами
clc
a = 1;
mu = 0.2;
omega = 4;
phi = pi/2;
[u,r] = meshgrid(-pi:pi/20:pi,1:0.2:5);
x = r.*cos(u);
y = r.*sin(u);
z = a*exp(-mu*r).*sin(omega*r+phi);
surf(x,y,z);

%% m. винтовой тор
a = 2;
R = 3;
[phi,v] = meshgrid(0:pi/20:2*pi,0:0.1:5);
x = (a+R*sin(phi)).*cos(v);
y = (a+R*sin(phi)).*sin(v);
z = R*cos(phi)+b*v;
surf(x,y,z);

%% n. Лента мёбиуса
clc
[u,v] = meshgrid(0:pi/20:2*pi,-0.5:0.05:0.5);
x = (1+v.*cos(0.5*u)).*cos(u);
y = (1+v.*cos(0.5*u)).*sin(u);
z = v.*sin(0.5*u);
surf(x,y,z);
