%% Practice 1.1.1

t = 0:0.001:8; %time (the independent variable t) is defined by using very small steps (time step = 0.01) in the continuous domain 0 <= t <= 8
A = 2; %The amplitude of signal is 2
Omega = pi; %The angular frequency is 
Theta = pi/3 ; %The phase of second signal is /3
x1 = A*cos(Omega*t); %The dependent variable x1(t) is defined in the continuous set of values -A=<x(t)=<A
x2 = A*cos(Omega*t+Theta); %Defending second signal x2(t)
figure %creates a new figure window using default property values
subplot(2,1,1) %subplot(m, n,  p) divides the current figure into an m-by-n grid and creates an axes for a subplot such that the first subplot is the first column of the first row
plot(t, x1); %the signal is drawn by using the command plot 
ax = gca; %Control axes appearance and behaviour (you can insert” help axes” in command windows to learn more
ax.XLabel.String ='t'; %add text beside the X-axis on the current axis
ax.YLabel.String ='x1(t)'; %add text beside the Y-axis on the current axis
ax.XAxisLocation = 'origin'; %Display the x-axis so that it passes through the origin point (0,0).
ax.Title.String = 'continuous sinusoidal signal example'; % adds text at the top of the current axis
subplot (2,1,2);
plot(t,x2); %Drawing second signal 
ax = gca ;
ax.XLabel.String ='t';
ax.YLabel.String ='x2(t)';
ax.XAxisLocation = 'origin';

%% Exercise 1.1.2

t = 0:0.001:2; %time (the independent variable t) is defined by using very small steps (time step = 0.01) in the continuous domain 0 <= t <= 8
x1 = 3*cos(5*pi*t + pi/6); %The dependent variable x1(t) is defined in the continuous set of values -A=<x(t)=<A
figure %creates a new figure window using default property values
plot(t, x1); %the signal is drawn by using the command plot 
ax = gca; %Control axes appearance and behaviour (you can insert” help axes” in command windows to learn more
ax.XLabel.String ='t'; %add text beside the X-axis on the current axis
ax.YLabel.String ='x1(t)'; %add text beside the Y-axis on the current axis
ax.XAxisLocation = 'origin'; %Display the x-axis so that it passes through the origin point (0,0).

%% Further Practice 1.1.3

t=linspace(0,2,100);
v0 = 4;
v_offsets= [2*v0,1.5*v0,v0,0.5*v0]; % define V_offset array contains four values of V_offset (we will use this matrix elements in for loop later)
Tin=0.2*10^-3;
Tm=10*10^-6;
V_m=2*cos(2*pi*t/Tm);
figure(1)

for i=1:4
    V_in = v0*cos(2*pi*t/Tin);
    V_offset  = v_offsets(i); % generate vs for specified value of V_offset . for example , on the first iteration, v_offset  = v_offsets(1) = 2*vo =8V  
    V_s = V_in+V_offset;      % v_(offset ) is added to the input voltage: V_s (t)= V_in(t)+V_offset(t)                                     
    V_o = V_s.*V_m;           %the signal V_s is multiplied by modulation voltage V_m(t): V_out (t)= V_s (t)×V_m (t)
    subplot(4,1,i)            % breaks the figure window into an 4-1-i matrix of small axes. on the first ,second,third and fourth iteration ,selects the 1st, 2nd,3rd,4th axes for the current plot respectively 
    plot(t,V_o)
    title(['Voffset = ',num2str(v_offsets(i)),'V']) 
end

%% Practice 1.2.1

N = 12 ;
n = 0:1:N-1; %Discrete time n is defined with step1
M = 4;       
x = sin (2*pi*M.*n./N); %defining dependent variable x[n]  
[~,T0] = rat(M/N) %calculate fundamental period using rational approximation (rat command. Notice there is no semicolon at the end of this command, that means matlab will display the result of the calculation
stem(n ,x) %the discrete signal is drawn by using the command stem 
xlabel ('n'); %add text beside the X-axis on the current axis (ax= gca Control axes appearance and behaviour can also be used as the previous practice)
ylabel ('y[n]');%add text beside the Y-axis on the current axis
title('discrete sinusoidal signal example'); %adds text at the top of the current axis

%% Exercise 1.2.2

arr = [4 5 7 10];

for i=1:4
    loopFunction(arr(i),i)
end

%% Practice 2.2.1

t = 0:0.1:2; %Practice 1.1.1 used 0.01 as the step size. You can use a variety of sizes, as long as they are small in comparison to the changes in the signal.
x = 3* exp(j*pi*t+pi/3);
x_re = real(x); %the real part of x
x_im = imag(x); %imaginary part of x
x_mag = abs(x); %the complex modulus (magnitude) of the elements of x
x_phase = phase(x); %Computes the phase of a x
figure
subplot(3,1,1)
plot(t,x_re,t,x_im,'-.') %using plot (X, Y, S) where S is a character string indicating the colour of the line, and the type of line (e.g., dashed, solid, dotted, etc.). Examples for the string S include: r (red), g (green), b(blue), k(black), + (plus), −− (dashed), *(star), s (square)
legend('real','imag')
title ( 'workshop1 practice 2.1.1')
subplot (3,1,2)
plot(t,x_mag)
ylabel('magnitude')
subplot (3,1,3)
plot(t,x_phase)
ylabel('phase')

%% Further Practice 2.1.2 && 2.1.3

t=-1:0.01:1; %  define independent variable time by using very small step (time step=0.01) in the continuous domain  
C=2*exp(j*pi/4); %define  by using the command exp 
r=-1;w0=6*pi;a=r+j*w0; %define 
xt=C*exp(a*t); %define  using the command exp
xenvp=abs(C)*exp(r*t); 
xenvn=-abs(C)*exp(r*t); %define x_envp = (positive envelop), x_envn = negative envelope using commands abs and exp 
plot(t,real(xt),'k',t,imag(xt),'k:',...
t,xenvp,'k--',t,xenvn,'k--') % Drawing the real part of x(t), imaginary part of x(t), x_envp and x_envn using command plot 
title('Complex Exponential'); 
xlabel('t')
legend('Real part','Imag. part') 

%% Practice 2.2.1

n = -6:6; % Definition of discrete time vector (with step 1) from -6 to 6
alph = 1.5;% takes alpha >1 Matlab has a function called alpha, so it is better (safer) not to use it as a variable name
xn = alph.^n ; % Definition of dependent variable x[n], xn = alpha. ^n denotes element-by-element powers.
figure;
stem (n, xn); % using command stem which is more appropriate for drawing discrete signals
ax = gca;
ax.XLim = [-6.5, 6.5];
title ('C=1, alpha =1.5');
ax.XLabel.String = 'n';
ax.YLabel.String = 'x[n]';

%% Exercise 2.2.2

arr = [-1.5 -0.7 0.7 1.5];
figure
for i=1:4
    loopFunction2(arr(i),i)
end

%% Practice 3.1.1 UNIT STEP FUNCTION

t = -10:0.01:10; 
u = t >= 0;
figure
plot (t,u,'r');
xlabel('t')
ylabel('u(t)')

%% Execrise 3.1.2

t = -3:0.01:3;%define of time interval  -3<=t<=3;
u_shift_left = heaviside(t+2); %defenition of u(t+2);
u_shift_right = heaviside(t-2);%defenition of u(t-2);
p2 = u_shift_left - u_shift_right;%The rectangular pulse is built according to equation p_2 (t)=u(t+1)-u(t-1)
plot(t,p2);
xlabel('t');
ylabel('p_{2}(t)')

%% Practice 3.2.1

n= -10:10;
x=n>=0
figure;
stem(n,x,'k');
xlabel('n');
ylabel('x[n]');
title (' Practice 3.2.1');

%% Practice 4.1.1

t=-2:0.1:2; %Definition of the time interval -2 =<t <=2
delta = dirac(t); %Definition of (t):  
figure;
plot (t, delta,'r','LineWidth',1.5); %Delta function is drawn with command plot, colour is set to red and line width is set to 1.5
xlabel('t')
ylabel('delta(t)');

%% Practice 4.2.1

n=-5:5;  %Definition of the discrete time vector (with step 1)
delta=n==0; %Define the unit impulse sequence 
figure
stem (n,delta) % The unit impulse sequence implemented with command stem
xlabel('n')
ylabel('delta(n)')
title ('practice 4.2.1')

%% Practice 4.2.2

n= -10:1:10; %Define of the discrete time vector with step 1 from -10 to 10 
u_n = n>=0;  %definition of 
u_shift_right = n-1>=0; %definition of 
delta_n = u_n - u_shift_right; %The discrete-time impulse is built according to equation  =u(t)-u(t-1)
subplot(3,1,1)
stem(n,u_n);
xlabel('n')
ylabel('u[n]')
subplot(3,1,2)
stem(n,u_shift_right);
xlabel('n')
ylabel('u[n-1]')
subplot(3,1,3)
stem(n,delta_n);
xlabel('n');
ylabel('delta[n]')

%% Practice 5.1.1

t=-3:0.1:3;                  %time is defined by using very small steps (time step =0.01) in the continuous domain -3=<t=<3
x=t.*exp(-t);                %Signal x(t) is defined 
x_refl = (-t) .* exp( t);    %time reversal of signal, x(-t)
x_ev =1/2*( x+x_refl);       %even part of x(t)  
x_od = 1/2*(x-x_refl);       %Odd part of x(t)  
even_odd_plot(x,x_ev,x_od,t) %Call function even_odd_plot to draw original signal, even part and odd part of signal and sum of even and odd part of signal 

%% Exercise 5.1.2

alph = 1.5;
n=-10:0.1:10;                
x=2*alph.^n;                 
x_refl = 2*alph.^-n; 
x_ev =1/2*( x+x_refl);       
x_od = 1/2*(x-x_refl); 
subplot(4,1,1)
stem(n,x)
title('x[n]');
subplot(4,1,2)
stem(n,x_ev)
title('even');
subplot(4,1,3)
stem(n,x_od)
title('odd');
subplot(4,1,4)
stem(n,x_ev+x_od)
title('even + odd');
    
%% Practice 6.1.1

t=-4:0.01:4;
x=heaviside(t-1)-heaviside(t-3); %Define signal 
x_refl =heaviside((-t)-1)-heaviside((-t)-3); %Time inversed, x(-t)
x_shift = heaviside((t+2)-1)-heaviside((t+2)-3); %Time shifted by unit 2 to the left 
x_scaled=heaviside((2*t)-1)-heaviside((2*t)-3); %Time scaled x(2t)  
modified_signal_plot (x,x_refl,x_shift,x_scaled,t)

%% Further Practice 6.1.2

t = -10:0.01:10 ; 
r = t.*(t>=0); %ramp function is defined as t.u(t) 
figure
plot (t,r,'r');
xlabel('t')

%% Further Practice 6.1.3
    
t = -10:0.01:10 ; 
u = ((t-1)>=0);
r = (t-1).*u;
    
r2 = (t).*u;

plot(t, r2)

