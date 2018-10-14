%% Practice 1.1.1

k1=-6:6;
ak_class = ((-1).^k1 ./ (2.*(1+j.*k1.*pi))) .* (exp(1)-exp(-1)); % the Fourier coefficient  is defined using the expression which we obtained in tutorial 5
syms t % Short-cut for constructing symbolic variables           % Computation of the Fourier series coefficient of the signal x(t) using MATLAB
x=exp(-t);
t0 = -1; % lower limit of the integration 
T = 2;
w=2*pi/T;
ak_matlab=(1/T)*int(x*exp(-j*k1*w*t), t,t0,t0+T); % int(S,v,a,b) is the definite integral of S with respect to v from a to b
subplot(2,1,1)
stem(k1,abs(ak_class),'b-');
ax=gca;
ax.XTick =-6:6;
pause on
pause(5) 
pause off        
hold on 
subplot(2,1,1)
h=stem(k1,abs(ak_matlab),'r--');
h.Marker='*';
ax=gca;
ax.XTick =-6:6;
legend('calculated theoretically', 'calculated with MATLAB')
title('magnitude of the Fourier series coefficients |a_{k}| for -1<k<1')
pause on
pause(5) 
pause off 
subplot(2,1,2)
stem(k1,angle(ak_class),'b-');
ax=gca;
ax.XTick =-6:6;
title('angle of the Fourier series coefficients \angle a_{k} for -1<k<1')
pause on
pause(5) 
pause off        
hold on 
subplot(2,1,2)
h1 = stem(k1,angle(ak_matlab),'r--');
h1.Marker='*';
ax=gca;
ax.XTick =-6:6;
ax.XLabel.String='k';

%% Exercise 1.1.2

k=-5:5;                  % plotting range
syms t                   % independant variable
x = sin(2*t)+cos(t);     % function to plot
t0 = 0; T = 2*pi;        % lower limit of integration 
w = 2*pi/T;              % angular freq
ak = (1/T)*int(x*exp(-j*k*w*t), t,t0,t0+T); % integration
subplot(2,1,1)
stem(k,abs(ak),'b-'); % plot a_k on k
title('magnitude of the Fourier series coefficients |a_{k}| for -5<k<5')
xlabel('k')
subplot(2,1,2)
stem(k, angle(ak))    % plot angle of fourier series
title('angle of the Fourier series coefficients \angle a_{k} for -5<k<5')

%% Practice 1.1.3

T1 = 1;
T = 2.5*T1;
w0 = 2*pi/T;
a = zeros(1,41);
count = 0; % Since subscript indices must either be real positive integers or logical, and in our example the index k varies from -20 to 20, we use count as variable to start at zero and increment by 1 on each iteration   
for k=-20:20 % for index = values, statements, end executes the statements in a loop for the specified number of times
    count = count+1; % The subscript index count is incremented by 1 on each iteration 
    if k==0 % if expression, statements, end evaluates an expression and executes the statements if the expression is true. An expression is true when its result is nonempty and contains only nonzero elements (logical or real numeric). Otherwise, the expression is false. The elseif and else blocks are optional.
        a(count)=2*T1./T;
    else
        a(count)=2*sin(k*w0*T1)./(k*w0*T);
    end
end 
figure 
k=-20:20;
stem(k,a)
title('the Fourier series coefficients a_{k} for T_{1}=1 and T=2.5T_{1}')
xlabel('k')

%% Exercise 1.1.4

values = [2.5, 4, 8, 16, 64];
figure 
for i=1:5
    exer114(values(i), i)
end

%% Further Practice 1.1.5

syms t
T=1;
T=2.5;
w = 2*pi/T;
t0 = -1;
x=heaviside(t+1)-heaviside(t-1);
k=-20:20;
ak = (1/T)*int(x*exp(-j*k*w*t), t,t0,t0+T);
figure
stem(k,a)
title('the Fourier series coefficient a_{k} for T_{1}=1 and T=2.5T_{1}')
xlabel('k')

%% Practice 1.2.1

figure;
subplot(4,1,1);
Gibbs_phenomenon(1,2.5,1);
subplot(4,1,2);
Gibbs_phenomenon(2,2.5,1);
subplot(4,1,3);
Gibbs_phenomenon(20,2.5,1);
subplot(4,1,4);
Gibbs_phenomenon(40,2.5,1);

%% Exercise 1.2.2

values = [4, 8, 16];

for i=1:3
    exer122(values(i)) 
end

%% Practice 1.3.1.1 LINEARITY

syms t
A = 3+2*j;
B = 2;
x=cos(t);
y=sin(t);
z=A*x+B*y;
t0 = 0;
T = 2*pi;
w=2*pi/T;
k=-5:5;
ak = (1/T)*int(x*exp(-j*k*w*t), t,t0,t0+T);
bk = (1/T)*int(y*exp(-j*k*w*t), t,t0,t0+T);
ck = (1/T)*int(z*exp(-j*k*w*t), t,t0,t0+T); % Determine the Fourier series coefficients of z(t)=Ax(t)+By(t). The period of z(t) is 2pi 
figure
subplot(4,1,1)
stem(k, abs(ck));
ax=gca;
ax.XTick = -5:5;
ax.YLim = [0,3];
title( 'magnitude of the coefficient c_{k}')
subplot(4,1,2)
stem(k, abs(A*ak+B*bk));
ax=gca;
ax.XTick = -5:5;
ax.YLim = [0,3];
title( 'magnitude of the coefficient Aa_{k}+Bb_{k}')
subplot(4,1,3)
stem(k, angle(ck));
ax=gca;
ax.XTick = -5:5;
ax.YLim = [0,2];
title( 'angle of the coefficient c_{k}')
subplot(4,1,4)
stem(k, angle(A.*ak+B.*bk));
ax=gca;
ax.XTick = -5:5;
ax.YLim = [0,2];
title( 'angle of the coefficient Aa_{k}+Bb_{k}')
ax.XLabel.String='k';

%% Practice 1.3.2.1 TIMESHIFTING

t0=0;
t1=2;
T=10;
w0= 2*pi/T;
syms t
x=t*exp(-t);
k = -5:5;
ak = (1/T)*int(x*exp(-j*k*w0*t), t,t0,t0+T); % the Fourier series coefficients ,  for the signal ,  are computed and plotted
x_shift = (t-t1).*exp(-(t-t1)); % the signal  is defined, which is a time_shifted version of 
ak_shift = (1/T)*int(x_shift*exp(-j*k*w0*t),t,t0+t1,t0+t1+T); % Compute the Fourier series coefficients of the time_shifted version of 
ak1=exp(-j*k*w0*t1).*ak; % compute the equivalent via the shifting property by multiplying the coefficient  by the quantity 
figure(1);
subplot(4,1,1)
stem(k,abs(ak_shift));
title('magnitude of the coefficients of x(t-2)=(t-2)e^{-(t-2)}') 
subplot(4,1,2)
stem(k,abs(ak1));
title('magnitude of the coefficients of e^{(-jkw_{0}t_{1})}a_{k}') 
subplot(4,1,3)
stem(k,angle(ak_shift));
title('angle of the coefficients of x(t-2)=(t-2)e^{-(t-2)}') 
subplot(4,1,4)
stem(k,angle(ak1));
title('angle of the coefficients of e^{(-jkw_{0}t_{1})}a_{k}') 

%% Practice 1.4.1

syms t
x = cos(t);
T = 2*pi;
t0 = 0;
P = 1/T*int(abs(x)^2,t0,t0+T); % The average power is computed directly from the left hand side of Parseval’s equation 
P1 = eval(P); % eval(expression) evaluates the MATLAB® code in the string expression
display(P1,'power calculated directly from the left hand side of Parseval’s equation') % display(X,DisplayName) prints the specified character array and the value of X instead of the variable name
w0 = 2*pi/T;
k = -6:6;
ak = (1/T)*int(x*exp(-j*k*w0*t),t,t0,t0+T); % calculation of the coefficients Fourier series coefficients  
P0 = sum((abs(ak).^2)); % the average power is calculated by the sum of the squares of the Fourier series coefficients 
P2 = eval(P0);
display(P2,'power calculated by the sum of the squares of the Fourier series coefficients')

%% Exercise 1.4.2

syms t
x = exp(-t);   % Function x(t)
T = 2;         % Period = 2
t0 = -1;
P = 1/T*int(abs(x)^2,t0,t0+T); % AVG power computed from LHS of parsevals
P1 = eval(P);
display(P1,'power calculated directly from the left hand side of Parseval’s equation') % display(X,DisplayName) prints the specified character array and the value of X instead of the variable name
w0 = 2*pi/T;
kk.limit{1} = [-6:6];
kk.limit{2}= [-9:9];
kk.limit{3} = [-12:12];
for i = 1:size(kk.limit,2)
    k = kk.limit{i};
    ak = (1/T)*int(x*exp(-j*k*w0*t),t,t0,t0+T); % calculation of the coefficients Fourier series coefficients  
    P0 = sum((abs(ak).^2)); % the average power is calculated by the sum of the squares of the Fourier series coefficients 
    P2 = eval(P0);
    display(P2,'power calculated by the sum of the squares of the Fourier series coefficients')
end
