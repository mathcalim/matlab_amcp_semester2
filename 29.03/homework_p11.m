%11.Используйте poly, чтобы определить вектор коэффициентов полинома
%(x-1)^100. Используя этот вектор, вычислите корни и постройте график
%полинома с выделением корней. Что вы наблюдаете? Это то, что ты ожидали
%увидеть? Можете ли вы объяснить разницу между тем, что получилось, и что
%вы ожидали увидеть.

%Clearly we should expect a steep parabolic figure that is concave upwards
%and has a single root/peak at x = 1.
clc
syms u;
P = sym2poly((u-1)^100);
disp(P);
R = roots(P);
R_real = R(R==real(R));
disp(R_real);
x = min(R_real):0.01:max(R_real);
y = polyval(P,x);
subplot(121)
title('The parabola y = (x-1)^2');
plot(x,(x-1).^2,'-g','Linewidth',1.5);
hold on;
plot(R_real,zeros(size(R_real)),'ok','MarkerFace','c');
subplot(122)
title('What we got');
plot(x,y,'-r','Linewidth',1.5);
hold on
plot(R_real,zeros(size(R_real)),'ok','MarkerFace','c');
