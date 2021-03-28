%I hope I understand this assignment correctly. That is to say, suppose
%that is because I do not understand how to 
clc
%поверхность вращения
x = linspace(0,10); %область определения
y = x.^2; %сама функция

plot_surface_of_revolution(x,y);
%%
%линейчатая поверхность
u = -pi:0.02:pi; %область определения. Желательно у нас шаг как можно меньше был
rho = [cos(u);2*sin(u);u.^2]; %направляющая
mu = [u.^2;0.4*u;log(abs(u))]; %образующие

plot_ruled_surface(rho,mu);


%%
function plot_surface_of_revolution(x,y)%x,y are arrays of points on graph
    plot(x,y);
    subplot(2,1,1);
    plot(x,y);
    title('original graph');

    [Z,X,Y] = cylinder(y);
    subplot(2,1,2);
    surf(X,Y,Z);
    title('surface of rotation');
    view(90,0);
end

function plot_ruled_surface(rho,mu)%rho,mu are matrices with 3 rows
    x = rho(1,:); y = rho(2,:); z = rho(3,:);
    a = mu(1,:); b = mu(2,:); c = mu(3,:);
    plot3(x,y,z);
    for i=1:length(rho)
        vlen = sqrt(a(i)^2+b(i)^2+c(i)^2);
        line([x(i)-a(i)/vlen,x(i)+a(i)/vlen],[y(i)-b(i)/vlen,y(i)+b(i)/vlen]...
            ,[z(i)-c(i)/vlen,z(i)+c(i)/vlen]);
    end
end