%k% Practice 1.1.2

syms t w % Short-cut for constructing symbolic variables
x=exp(-3*t)* ((sign(t)+1)/2);
X=fourier(x, w) % fourier(f) is the Fourier transform of the symbolic expression

%% Practice 1.1.3

syms t w % Short-cut for constructing symbolic variables
X=1/(3 + w*1i);
x=ifourier(X,t) % fourier(f) is the Fourier transform of the symbolic expression


%% Exercise 1.1.4

syms t w
x = exp(-t^2);
X = fourier(x, w)
x = ifourier(X, t)

%% Practice 1.2.1

syms t w
x = dirac(t)
X= fourier (x,w)

syms w
X=fourier(1,w)

syms t w
X= 1/(j*w)+pi*dirac(w);
x = ifourier(X,t)

syms t w w0
X=2*pi*dirac(w-w0);
x= ifourier(X,w)

syms t t0 w0 w
x=dirac(t-t0);
X=fourier(x,w)

syms t t0 w0 w
X=pi*dirac(w-w0)+pi*dirac(w+w0);
x=ifourier(X,t)

a=5;
syms t w 
x = exp(-a*t)*((sign(t)+1)/2);
X=fourier(x,w)

a=5;
syms t w 
x = t*exp(-a*t)*((sign(t)+1)/2);
X=fourier(x,w)

%% Practice 1.2.2

syms t w T
x = heaviside(t+T/2)-heaviside(t-T/2);

figure(1)
xx=subs(x,T,4); % ezplot(FUN,[A,B]) plots FUN(X) over A < X < B. replaces T in x(t) with 4
ezplot(xx,[-4,4]);
xlabel('t');
ylabel('x(t)');
title('x(t)=\rho_{T}(t)=u(t+T/2)-u(t-T/2)')

figure(2)
X = fourier(x,w);
wl=[-30:0.1:-0.1 0.1:0.1:30];
X = subs(X,w,wl);
X = subs(X,T,4);
plot(wl,X)
xlabel('\omega,rad/s')
ylabel('X(j\omega)')
title (' Fourier transform of the signal x(t)=\rho_{T}(t) using command fourier')

figure(3)
X2= T *(sin(w*T/2))/(w*T/2);
wl=[-30:0.1:-0.1 0.1:0.1:30];
X = subs(X2,w,wl);
X = subs(X,T,4);
plot(wl,X);
xlabel('\omega,rad/s')
ylabel('X(j\omega)')
title ('X(j\omega)=Tsin(T\omega/2)/(T\omega/2)')

%% Practice 1.3.1

syms t w 
x1 =(exp(-2*t))*(heaviside(t));  % defineing of the signal x1(t)=u(t)=u(t-2)
x2 = (exp(-3*t))*(heaviside(t)); % defineing of the signal x2(t)=u(t)=u(t-4)
X1 = fourier(x1,w);              % calculate Fourier transform of the signal x1(t)
X2 = fourier(x2,w);              % calculate Fourier transform of the signal x2(t)
X=X1*X2;                         % multiplication of functions in frequency domain
ifourier_X1_X2 = ifourier(X,t);  % calculate inverse Fourier transform of the product of the corresponding Fourier transforms X1(jw) and X2(jw) to find convolution in time domain  
t= 0:0.01:8;
uu = subs(ifourier_X1_X2,t);


figure(1)
plot(t,uu) % Computation and graph of the convolution between x1(t) and x2(t)
t= 0:0.0001:4;
x1 =(exp(-2*t)).*(heaviside(t));   
x2 = (exp(-3*t)).*(heaviside(t)); 
y = 0.0001*conv(x1,x2); % multiply by 0.0001 because matlab cant do contiuous convolution, i.e. multiply by delta t
figure (2)
plot(0:0.0001:8,y)
%syms t w 

%% Practice 1.4.1

syms w 
n=0:20;
x=0.8.^n;
X= sum(x.*exp(-j*w*n)); % use summation formula
w1 = -pi:0.01:pi;
XX = subs(X,w,w1);
subplot(2,1,1)
plot(w1,angle(XX));
xlim([-pi pi])
subplot(2,1,2)
plot(w1,abs(XX));
xlim([-pi pi])

%% Exercise 1.4.2

syms w 
n=0:20;
x=0.8.^n;
X= sum(x.*exp(-j*w*n)); % use summation formula
w1 = -2*pi:0.01:2*pi;
XX = subs(X,w,w1);
subplot(2,1,1)
plot(w1,angle(XX));
xlim([-2*pi 2*pi])
subplot(2,1,2)
plot(w1,abs(XX));
xlim([-2*pi 2*pi])

%% Practice 1.5.1

n=0:7;
x = 0.8.^n;
syms w
X_DTFT=sum(x.*exp(-j*w*n));
N=8;
k = 0:N-1;
wk =(2*pi*k)/N;
X_DTFT_wk = subs(X_DTFT,w,wk); % The DTFT of x[n] is evaluated at the frequency point wk=2*pi*k/N ,K=1,2,…….N-1
(eval (X_DTFT_wk))'
X=fft(x); %The DTF Xk of the x[n] is computed 
X'






