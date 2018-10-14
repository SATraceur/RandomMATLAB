function Exercise212(R)

%define matrices and matrix equation
syms x1(t) x2(t) 
L=1;
C=4;
Vs=1
A=[0 1; -1/L*C  -R/L  ];
B=[0 ;Vs/L];
X=[x1;x2];
eqn = diff(X) == A*X + B;

% solve The matrix equation by using solve
[x1Sol(t), x2Sol(t)] = dsolve(eqn); 

% Simplify the solution by using simplify.
x1Sol(t) = simplify(x1Sol(t))
x2Sol(t) = simplify(x2Sol(t))
C = X(0) == [0 ; 0];
[x1Sol(t), x2Sol(t)] = dsolve(eqn, C);

%Visualize the solutions by using fplot.
figure
clf
fplot(x1Sol,[0,10])

% ylim([0,1.4])
hold on
fplot(x2Sol,[0,10])

% ylim([0,1.4])
grid on
legend('x1=q(t)','x2=x1^{\prime}=i(t)','Location','best')
title(['R is ',num2str(-A(2,2)),'\Omega'])

end

