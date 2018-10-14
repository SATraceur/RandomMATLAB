function Exercise112(b)

syms x1(t) x2(t)
F=1; k=4; m=1;
A=[0 1; -k/m  -b/m];
B=[0;F/m];
X=[x1;x2];
eqn = diff(X) == A*X + B;
[x1Sol(t), x2Sol(t)] = dsolve(eqn); % solve The matrix equation by using solve
x1Sol(t) = simplify(x1Sol(t)) % Simplify the solution by using simplify.
x2Sol(t) = simplify(x2Sol(t))
C = X(0) == [0; 0];
[x1Sol(t), x2Sol(t)] = dsolve(eqn, C);

%Visualize the solutions by using fplot.
figure
clf
fplot(x1Sol,[0,10])
hold on
fplot(x2Sol,[0,10])
grid on
legend('x displacement ','x^{\prime}= v ','Location','best')
title(['b is ',num2str(-A(2,2)*m),' Ns/m'])

end

