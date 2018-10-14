%% Practice 1.1.2

syms t s  % Short-cut for constructing symbolic variables
x=exp(-3*t)
X=laplace(x, s) % laplace(s) is the Laplace transform of the symbolic expression

%% Practice 1.1.3

syms t s  % Short-cut for constructing symbolic variables
X=1/(3 + s);
x=ilaplace(X,t) % Laplace(s) is the Laplace transform of the symbolic expression

%% Exercise 1.1.4

syms t s

x = dirac(t);
X = laplace(x)

x = heaviside(t);
X = laplace(x)

x = exp(-2*t)*heaviside(t);
X = laplace(x)

x = sin(3*pi*t)*heaviside(t);
X = laplace(x)

%% Exercise 1.1.5

syms t

X = 1;
x = ilaplace(X, t)

X = 1/s;
x = ilaplace(X, t)

X = 1/(s+2);
x = ilaplace(X, t)

X = 1/(s+2*j);
x = ilaplace(X, t)

%% Practice 1.1.6

syms t s w
x=cos(w*t)
X=laplace(x)

syms t s w a
x=exp(-a*t)*cos(w*t);
X=laplace(x,s)

syms t s w a
x=exp(-a*t)*sin(w*t);
X=laplace(x,s)

syms t s
n= 4;
x=t^n;
X=laplace(x,s)

syms t s a
n=6;
X = (factorial(n))/(s+a)^(n+1);
x=ilaplace(X,t)

syms t s a
x = t*cos(w*t);
X=laplace(x,s)

syms t s
n=5;
X = 1/(s+a)^n;
x=ilaplace(X,t)

%% Practice 1.2.1

b = [-4 8];
a = [1 6 8];
[r,p,k] = residue(b,a)

%% Practice 1.2.2

r =[-12,8]; % numerator
p =[-4,-2]; 
k =[];
[b,a] = residue(r,p,k) 

%% Exercise 1.2.3

b = [1, -7, -14, 8];
a = [1, -8, 11, 20];
[r,p,k] = residue(b,a)

% Check results
r =[-18.6667, 19.2, 0.4667];
p =[5, 4, -1];
k =[1];
[b,a] = residue(r,p,k) 

b = [1, 0, 1, 8];
a = [1, 2, 1];
[r,p,k] = residue(b,a)

% Check results
r =[4, 6];
p =[-1 -1];
k =[1, -2];
[b,a] = residue(r,p,k) 

%% 1.3 Convolusion in time domain

figure(1)
syms s t 
x1=heaviside(t)-heaviside(t-5);
x2=heaviside(t)-heaviside(t-10);
X1=laplace(x1,s);
X2=laplace(x2,s);
X =ilaplace( X1*X2);
ezplot(X,[0,20]); %ezplot (X, [A, B]) plots X(s) over A < s < B
title('L^{-1}[X_{1}(s)X_{2}(s)]')
ylim([-0.2,5.5])
figure(2)
t= 0:0.01:10;
x1=heaviside(t)-heaviside(t-5);
x2=heaviside(t)-heaviside(t-10);
x=conv(x1,x2)*0.01;
plot(0:0.01:20,x)
title ('x_{1}*x_{2}');
ylim([-0.2,5.5])


%% Practice 2.1.1

num=[1,0,1];
den=[1,4,5];
Hs=tf(num,den)

%% Practice 2.2.1

num=[2,0,5];
den=[1,2,4,3];
Hs=tf(num,den);
pzmap(num,den);
poles=pole(Hs)
zeros=zero(Hs)

%% Practice 2.3.1

num=[3,6,0];
den=[1,7,12];
Hs=tf(num,den)
Hs_z_p = zpk(Hs)

%% Practice 2.3.2

% PART A
num=[3,6,0];
den=[1,7,12];
[z,p,k] =tf2zp(num,den)

% PART B
z=[2,1];
p=[1,2,3];
k=3;
[num,den] = zp2tf(z',p',k)

%% Exercise 2.3.3

% part a
num=[4,8,0];
den=[1,3,6];
Hs=tf(num,den)
Hs_z_p = zpk(Hs)

% part b
pzmap(num,den);
poles=pole(Hs);
zeros=zero(Hs);
%% Practice 2.4.1

H1=tf([3],[1,3])
H2=tf([1],[1,2])
H3=tf([1,2],[1,3])
H_parallel= parallel(H1,H2)
H_overall=series(H_parall

%% Practice 2.5.1

H1=tf([3],[1,3]); 
H2=tf([1],[1,2]); 
H3=tf([1,2],[1,3]);
H_parallel= parallel(H1,H2);
H_overall=series(H_parallel,H3); 

%The system response to the input x(t)=sin(2pit)
t=0:0.1:10;
x=sin(2*pi*t);
y=lsim(H_overall,x,t);
figure(1)
subplot(2,1,1)
plot(t,x);
title('Input x(t)=sin(2*pi*t)')
subplot(2,1,2)
plot(t,y)
title('output y(t)')

% The system step response 
figure(2)
step(H_overall)

% The system impulse response 
figure(3)
impulse(H_overall)


%% Exercise 2.5.2

H1=tf([1],[1,2]); 
H2=tf([1],[1,1]); 
H3=tf([2,3],[1,3,3,1]);
H_parallel= parallel(H1,H2);
H_overall=series(H_parallel,H3); 

% calculate impulse response
figure
impulse(H_overall)
title('Impulse response of system')
xlabel('time (s)')
ylabel('amplitude')

% calculate step response
figure
step(H_overall)
xlabel('time (s)')
ylabel('amplitude')

% response to input x(t) = texp(-t)(u(t) - u(t-4))
t = 0:0.1:10;
x = t.*exp(-t).*(heaviside(t)-heaviside(t-4));
y = lsim(H_overall,x,t);
figure
subplot(2,1,1)
plot(t,x)
title('input x(t)=te^-^t*(u(t)-u(t-4))')
subplot(2,1,2)
plot(t,y)
title('ouput y(t)')

