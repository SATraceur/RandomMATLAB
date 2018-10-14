%% 1.1.1 Practice

%define matrices and matrix equation
syms x1(t) x2(t)
F=1; b=3.5; k=4; m=1;
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

%% 1.1.2 Exercise

array = [4, 2, 0.5, 0.01];

for i=1:4
    Exercise112(array(i));
end
    
%% 2.1.1 Practice

%define matrices and matrix equation
syms x1(t) x2(t) 
L=1;
C=4;
R=3.5;
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

%% 2.1.2 Exercise

array = [4, 2, 0.5, 0.01];

for i=1:4
    Exercise212(array(i));
end
