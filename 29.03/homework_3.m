%3. Выполнить деление
P1 = [2 -3 4 -5 6];
D1 = [1 -3 1];
[Q1,R1] = deconv(P1,D1);
disp(Q1); disp(R1);

P2 = [1 -3 -1 -1];
D2 = [3 -2 1];
[Q2,R2] = deconv(P2,D2);
disp(Q2); disp(R2);