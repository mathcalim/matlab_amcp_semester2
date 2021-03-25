%% Задания для самостоятельной работы
%2a) z = asin(x^2 + y^2)^(1/2)/(x^2 - y^2)^(1/2)
a = 1; %например 1
x = -10:0.5:10;
y = -10:0.5:10;
subplot(2,2,1);
[X,Y] = meshgrid(x,y);
Z = a*sin((X.^2+Y.^2).^(1/2))./((X.^2+Y.^2).^(1/2));
mesh(X,Y,Z);
subplot(2,2,3);
surf(X,Y,Z);

%2b) z = -xsinx - ycosy
subplot(2,2,2);
x = -2*pi:0.5:2*pi;
y = -2*pi:0.5:2*pi;
[X,Y] = meshgrid(x,y);
Z = X.*sin(X)-Y.*cos(Y);
mesh(X,Y,Z);
colormap('hot');
subplot(2,2,4);
surfc(X,Y,Z);
