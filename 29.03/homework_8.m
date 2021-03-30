%8. Наитй корни полиномов и построить график на отрезке, содержащем корни.
P1 = [1 -6 15 -4];
P2 = [24 10 -1 -19 -5 6];
P3 = [1 0 1];
% find_roots_and_graph(P1);
find_roots_and_graph(P2);
% find_roots_and_graph(P3);

function find_roots_and_graph(P)
    R = roots(P);
    fprintf('Roots: \n');
    disp(R');
    real_roots = R(R==real(R));
    fprintf('Real roots: \n');
    disp(real_roots');
    plot(real_roots,zeros(size(real_roots)),'ok','MarkerFace','r');
    title('Plot of real roots of polynomial');
    xlabel('x');
    ylabel('y');
    hold on
    dimensions = size(real_roots);
    if(dimensions(1) == 0) %we have no real roots, number of rows is 0
        disp('no real roots, plotting in interval [-5, 5]');
        x = linspace(-5,5);
    elseif(dimensions(1) == 1)
        disp('only one real root, plotting in interval of length 10 around it');
        x = linspace(real_roots-5,real_roots+5);
    else
        disp('multiple real roots');
        x = linspace(min(real_roots),max(real_roots));
    end
    plot(x, polyval(P,x),'-k','LineWidth',1.3);
end