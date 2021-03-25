%Пусть известна трехмерная вектор-функция трехмерная вектор-функция r(t).
%Для заданного параметра t отобразить кривую, задаваемую этой функцией, и
%для заданного шага изменения t отобразить положение репера френе.

%в качестве примера я сам определю уравнение
%здесь может быть ваша реклама/ваше уравнение
syms u real;
syms x(u) y(u) z(u);
syms tau(u) n(u) b(u); %касательная, главная нормаль, бинормаль
tmin = -3*pi/4;
tmax = pi/2;
step = pi/64; %шаг между параметрами соседних точек
delta = pi/4; %шаг изменения, что вам угодно
w = 0.8; %широта сопровождающего трехграника, чтобы не было бардака

x(u) = cos(u);
y(u) = 2*sin(2*u);
z(u) = 3*sin(3*u);
r = [x(u) y(u) z(u)]; %"известная нам вектор-функция"

%все, что находится высше, вы сами задаете. Ниже программа
%calculating the normal, binormal and 'gradient'
dr = diff(r);
d2r = diff(dr);
c1 = cross(dr,d2r);
c2 = cross(c1,dr);
tau(u) = dr/sqrt(dot(dr,dr));
n(u) = c2/sqrt(dot(c2,c2));
b(u) = c1/sqrt(dot(c1,c1));

t = tmin:step:tmax; %рисуем сам график
plot3(x(t),y(t),z(t),'r','LineWidth',2);
axis equal %this can be removed
hold on

for i = 0:(tmax-tmin)/delta
    ti = tmin+i*delta;
    plot3(x(ti),y(ti),z(ti),'diamondk','MarkerSize',6,'MarkerFaceColor','#A2142F');
    taui = tau(ti);
    ni = n(ti);
    bi = b(ti);
    
    %соприкасающая плоскость (I'm sure we can write a function to simplify
    %this, since we have repeating code.)
    [p,q] = meshgrid(linspace(0,w,10), linspace(0,w,10));
    X = double(x(ti)+taui(1)*p+ni(1)*q);
    Y = double(y(ti)+taui(2)*p+ni(2)*q);
    Z = double(z(ti)+taui(3)*p+ni(3)*q);
    surf(X,Y,Z);
    hold on
    
    %нормальная плоскость
    X = double(x(ti)+ni(1)*p+bi(1)*q);
    Y = double(y(ti)+ni(2)*p+bi(2)*q);
    Z = double(z(ti)+ni(3)*p+bi(3)*q);
    surf(X,Y,Z);
    hold on
    
    %спрямляющая плоскость
    X = double(x(ti)+bi(1)*p+taui(1)*q);
    Y = double(y(ti)+bi(2)*p+taui(2)*q);
    Z = double(z(ti)+bi(3)*p+taui(3)*q);
    surf(X,Y,Z);
    hold on
end
