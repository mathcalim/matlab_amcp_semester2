%9) Вычислить кривизну и кручение для семейства кривых, заданных
%параметрически:
% x(u) = t*cos(u)*cos(u)
% y(u) = t^2*cos(u)*sin(u)
% z(u) = t^2*sin(u)

syms t u real;
r = [t*cos(u)*cos(u) t^2*cos(u)*sin(u) t^2*sin(u)];
dr = diff(r,u);
d2r = diff(dr,u);
d3r = diff(d2r,u);

curvature = simplify((dot(cross(dr,d2r),cross(dr,d2r)))^(1/2)...
    /(dot(dr,dr))^(3/2));
torsion = simplify(dot(dr,cross(d2r,d3r))...
    /dot(cross(dr,d2r),cross(dr,d2r)));
disp('Curvature');
disp(curvature);
disp('Torsion');
disp(torsion);