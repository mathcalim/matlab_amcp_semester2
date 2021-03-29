%5.Найти кратные корни полиномов, построить график на отрезке, содержащем
%корни

%P(x) = x^2n - nx^(n+1) + nx^(n-1) -1;
%Evidently, we will have to make a function that takes an integer value of
%n. There will be a variable which can be edited by the assessor.

n = 6;
repeated_roots(n);

function repeated_roots(n)
    P = zeros(1,2*n+1);
    P(1) = 1;
    P(n) = -n;
    P(n+2) = n;
    P(2*n+1) = -1;
    dP = polyder(P);
    G_symbolic = gcd(poly2sym(P),poly2sym(dP));
    G = coeffs(G_symbolic);
    repeated_roots = unique(roots(G));
    
    fprintf('n: %d\n',n);
    fprintf('Polynomial P coefficients:');
    disp(P);
    fprintf('Derivative dP coefficients:');
    disp(dP);
    fprintf('GCD of P and dP:\t');
    disp(G_symbolic);
    fprintf('Repeated roots:\t');
    disp(repeated_roots');
end