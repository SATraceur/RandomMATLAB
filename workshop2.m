%% Practice 1.1.1

t = -4:0.01:4;                    %time (the independent variable t) is defined by using very small steps (time step = 0.01) in the continuous domain -4<= t <= 4
x1 = heaviside(t)-heaviside(t-1); %definition of the input x1 and x2
x2 = heaviside(t)-heaviside(t-2);
a=3; b=4;
y_1 = 2*x1;  
y_2 = 2*x2;                 %Defending output of the system for signal x1 and x2 
y_1_2 = a*y_1+b*y_2;        %signal y_1_2 is computed as the linear combination of the outputs y_1(output of the system for the input signals x1) and y_2(output of the system for the input signals x2) “y_1_2 = aS{x1}+bS{x2}=ay1+by2”
x3 = a*x1+b*x2;             %signal x3 is defined as the linear combination of the input signals x1 and x2
y3 = 2*(x3);                %defining the output of the system to an input x3 that is a linear combination of two signals, x1 and x2 “y3 =S{x3} =S{ax1+bx2}”
subplot(1,2,1)
plot(t,y_1_2, 'r');         %signal y_1_2  is drawn with command plot 
xlabel('t');
ylabel('a*y_{1}+b*y_{2}');
ylim ([-0.5,14.5])
subplot(1,2,2)
plot(t,y3, 'r');            % signal y3 is drawn with command plot 
xlabel('t');
ylabel('y_{3}');
ylim ([-0.5,14.5])

%% Exersize 1.1.2

t = -4:0.01:4;                    %time (the independent variable t) is defined by using very small steps (time step = 0.01) in the continuous domain -4<= t <= 4
x1 = heaviside(t)-heaviside(t-1); %definition of the input x1 and x2
x2 = heaviside(t)-heaviside(t-2);
a=3; b=4;
y_1 = 2*x1;  
y_2 = 2*x2;                 %Defending output of the system for signal x1 and x2 
y_1_2 = a*y_1+b*y_2;        %signal y_1_2 is computed as the linear combination of the outputs y_1(output of the system for the input signals x1) and y_2(output of the system for the input signals x2) “y_1_2 = aS{x1}+bS{x2}=ay1+by2”
x3 = a*x1+b*x2;             %signal x3 is defined as the linear combination of the input signals x1 and x2
y3 = x3.^2;                 %defining the output of the system to an input x3 that is a linear combination of two signals, x1 and x2 “y3 =S{x3} =S{ax1+bx2}”
subplot(1,2,1)
plot(t,y_1_2, 'r');         %signal y_1_2  is drawn with command plot 
xlabel('t');
ylabel('a*y_{1}+b*y_{2}');
ylim ([-0.5,14.5])
subplot(1,2,2)
plot(t,y3, 'r');            % signal y3 is drawn with command plot 
xlabel('t');
ylabel('y_{3}');
ylim ([-0.5,50])


%% Practice 1.2.1

n = -4:4; % Definition of the discrete time vector (with time step of 1)
x1 = 2*n; % Definition of the input signal x1 
x2 = n/3; % Definition of the input signal x2 
a = 2; b = 3;
y1 = x1; % y1 is computed as the output of the system to the input signal x1 
y2 = x2; % y2 is computed as the output of the system to the input signal x2
y_1_2 = a.*x1+b.*x2; % signal y_1_2 is defined as the linear combination of y_1(output of the system for the input signal x1) and y_2(output of the system for the input signal x2)
x3 = a.*x1+b.*x2; % signal x3 is defined as the linear combination of signals x1 and x2
y3 = x3; % the output of the system to an input x3
subplot(1,2,1)
stem(n,y_1_2,'r','filled'); % the output signal y_1_2 is drawn with the command stem 
xlabel('n');
ylabel('a*y_{1}+b*y_{2}');
subplot(1,2,2)
stem(n,y3,'r','filled'); % the output signal y3 is drawn with the command stem
xlabel('n');
ylabel('y_{3}');

%% Practice 2.1.1

t =-10:0.001:10;
x=heaviside(t)-heaviside(t-5);
x_shift_3 = heaviside(t-3)-heaviside((t-3)-5); % the input signal x(t) is shifted 3 units to the right in order to represent the signal x(t − 3)
y1 = t.*(x_shift_3); % the system output y1(t)= S{x(t - 3)} is computed
y = t.*x; % compute and plot the output of the system y(t) to the given input signal x(t) = u(t) − u(t − 5)
subplot(3,1,1)
plot(t,y);
ax = gca;
ax.XLabel.String = 't';
ax.YLabel.String = 'y(t)';
title ('the system output y(t) to the input signal x(t) : y(t)=S\{x(t)\}');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-10 10]);
subplot(3,1,2)
plot(t,y1);
ax = gca;
ax.XLabel.String = 't';
ax.YLabel.String = 'y_1(t)';
title('the system output y_1(t) to the input signal x(t-3) : y_1(t)=S\{x(t-3)\}');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-10 10]);
subplot(3,1,3)
plot(t+3,y); %the computed output  is shifted by  units to the right to represent the signal 
ax = gca;
ax.XLabel.String = 't';
ax.YLabel.String = 'y_2(t)';
title('the output y(t) is shifted by 3 units to the right : y_2(t)=y(t-3)');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-10 10]);


%% Exercise 2.1.2

t =-10:0.001:10;
x=heaviside(t)-heaviside(t-5);
x_shift_3 = heaviside(t-3)-heaviside((t-3)-5); % the input signal x(t) is shifted 3 units to the right in order to represent the signal x(t − 3)
y1 = cos(x_shift_3); % the system output y1(t)= S{x(t - 3)} is computed
y = cos(x); % compute and plot the output of the system y(t) to the given input signal x(t) = u(t) − u(t − 5)
subplot(3,1,1)
plot(t,y);
ax = gca;
ax.XLabel.String = 't';
ax.YLabel.String = 'y(t)';
title ('the system output y(t) to the input signal x(t) : y(t)=S\{x(t)\}');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-10 10]);
subplot(3,1,2)
plot(t,y1);
ax = gca;
ax.XLabel.String = 't';
ax.YLabel.String = 'y_1(t)';
title('the system output y_1(t) to the input signal x(t-3) : y_1(t)=S\{x(t-3)\}');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-10 10]);
subplot(3,1,3)
plot(t+3,y); %the computed output  is shifted by  units to the right to represent the signal 
ax = gca;
ax.XLabel.String = 't';
ax.YLabel.String = 'y_2(t)';
title('the output y(t) is shifted by 3 units to the right : y_2(t)=y(t-3)');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-10 10]);

%% Practice 2.2.1

n=-10:10;
x = (0.8.^n).*(unit_step(n)-unit_step(n-5));
y=x.^2;
x_shift_2 =( 0.8.^(n-2)).*(unit_step(n-2)-unit_step((n-2)-5)); % the input signal x[n] is shifted 2 units to the right to obtain the delayed signal x[n−2]
y1=(x_shift_2).^2; % the system output y1 to the input signal x[n−2] is computed : y1[n] = S{x[n−2]}
subplot(3,1,1)
stem(n,y);
ax = gca;
ax.XLabel.String = 'n';
ax.YLabel.String = 'y[n]';
title ('the system output y[n] to the input signal x[n] : y[n]=S\{x[n]\}');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-10 10]);
subplot(3,1,2)
stem(n,y1);
ax = gca;
ax.XLabel.String = 'n';
ax.YLabel.String = 'y_1[n]';
title('the system output y_1[n] to the input signal x[n-2] : y[n]=S\{x[n-2]\}');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-10 10]);
subplot(3,1,3)
stem(n+2,y); % the computed output y2 is drawn with stem command (y[n] is shifted by 2 units to the right to obtain the delayed signal y[n−2])
ax = gca;
ax.XLabel.String = 'n';
ax.YLabel.String = 'y_2[n]';
title('the output y(t) is shifted by 3 units to the right : y_2[n]=y[n-3]');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-10 10]);

%% Practice 3.1.1

n=-1:3;
delta = [0,1,0,0,0]; % the input signal 
hn= [1,2,1,3,1]; % the impulse response 
y = conv(delta,hn); % perform the convolution 
subplot(3,1,1)
stem(n,delta);
ax = gca;
ax.XLabel.String = 'n';
title ('x[n]=\delta[n]');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XTick = n;
ax.XLim = ([-2 5]);
ax.YLim = ([0 3]);
subplot(3,1,2)
stem(n,hn);
ax = gca;
ax.XLabel.String = 'n';
title('h[n]');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XTick = n;
ax.XLim = ([-2 5]);
ax.YLim = ([0 4]);
subplot(3,1,3)
stem(-2:6,y); % In general, when we convolve two sequences of length N1 and N2, the result is of length N1 + N2 -1. In this example N1 = N2 = 5. If the two sequences range over intervals : and :, then the result of the convolution will range over :. Thus, we plot the result using:
stem (-2:6, y);
ax = gca;
ax.XLabel.String = 'n';
title('y[n]');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-2 5]);
ax.YLim = ([0 4]);
ax.XTick = n;

%% Exercise 3.1.2

n=-1:3;
delta = [0,0,1,0,0]; % the input signal 
hn= [1,2,1,3,1]; % the impulse response 
y = conv(delta,hn); % perform the convolution 
subplot(3,1,1)
stem(n,delta);
ax = gca;
ax.XLabel.String = 'n';
title ('x[n]=\delta[n-1]');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XTick = n;
ax.XLim = ([-2 5]);
ax.YLim = ([0 3]);
subplot(3,1,2)
stem(n,hn);
ax = gca;
ax.XLabel.String = 'n';
title('h[n]');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XTick = n;
ax.XLim = ([-2 5]);
ax.YLim = ([0 4]);
subplot(3,1,3)
stem(-2:6,y); % In general, when we convolve two sequences of length N1 and N2, the result is of length N1 + N2 -1. In this example N1 = N2 = 5. If the two sequences range over intervals : and :, then the result of the convolution will range over :. Thus, we plot the result using:
stem (-2:6, y);
ax = gca;
ax.XLabel.String = 'n';
title('y[n] = h[n-1]');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-2 5]);
ax.YLim = ([0 4]);
ax.XTick = n;

%% Practice 3.2.1

Dt = 0.001; % define the small time step
t =-1:Dt:3;
h = unit_step(t)-unit_step(t-2); % define the impulse response h(t)=u(t)-u(t-2)
x = unit_step(t)-unit_step(t-1); % define the input signal x(t)= u(t)-u(t-1)
y = Dt*conv(h,x); % approximate the continuous-time convolution
subplot(3,1,1)
plot(t,h);
ax = gca;
ax.XLabel.String = 't';
title ('h(t)');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-1 5]);
ax.YLim = ([-0.5 1.5]);
subplot(3,1,2)
plot(t,x);
ax = gca;
ax.XLabel.String = 't';
title ('x(t)');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-1 5]);
ax.YLim = ([-0.5 1.5]);
subplot(3,1,3)
plot(-2:Dt:6,y);
ax = gca;
ax.XLabel.String = 't';
title ('y(t)');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-1 5]);
ax.YLim = ([-0.5 1.5]);

%% Exercise 3.2.2

Dt = 0.001; % define the small time step
t =-1:Dt:3;
h = exp(-t/2) .* (unit_step(t));
x = unit_step(t)-unit_step(t-1); % define the input signal x(t)= u(t)-u(t-1)
y = Dt*conv(h,x); % approximate the continuous-time convolution
subplot(3,1,1)
plot(t,h);
ax = gca;
ax.XLabel.String = 't';
title ('h(t)');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-1 5]);
ax.YLim = ([-0.5 1.5]);
subplot(3,1,2)
plot(t,x);
ax = gca;
ax.XLabel.String = 't';
title ('x(t)');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-1 5]);
ax.YLim = ([-0.5 1.5]);
subplot(3,1,3)
plot(-2:Dt:6,y);
ax = gca;
ax.XLabel.String = 't';
title ('y(t)');
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XLim = ([-1 5]);
ax.YLim = ([-0.5 1.5]);

%% Practice 4.1.1

t=0:.01:4;
b= [1]; % vector containing the coefficients of the differential equation in term of x(t) 
a = [1 6 8]; % vector containing the coefficients of the differential equation in term of y(t) 
h=impulse(b,a,t);% determine the impulse response of the system using the impulse command
figure
plot(t,h, 'b-') % force the line to be solid blue
pause on
pause(5)  % execution for 5 seconds
pause off % Disable the pause % compare to the impulse response given by h(t)=1/2 (e^(-2t)+e^(-4t) )
hold on  % hold on retains plots in the current axes so that new plots are added to the axes without deleting the existing plots
h_calss = (1/2)*(exp(-2*t) - exp(-4*t)); % define the impulse response h(t)=1/2 (e^(-2t)+e^(-4t) )
plot(t,h_calss, 'r-.') % new plot to draw the impulse response calculated theoretically in lectures, using a red dash-dotted line, based on the ColorOrder and LineStyleOrder properties of the axes
legend('implemented with MATLAB','calculated theoretically')

%% Practice 4.1.2

t=0:0.01:4;
b= [1];% vector containing the coefficients of the differential equation in term of x(t) 
a = [1 6 8];% vector containing the coefficients of the differential equation in term of y(t) 
h=impulse(b,a,t);% determine the impulse response of the system using the impulse command
x=unit_step (t);% define the input signal as the step function 
y=0.01*conv(double(x), h);
plot(0:.01:8, y,'k')
title ( 'the output of this system in response to a step function input')
%% Continued
t=0:0.01:4;
b= [1];% vector containing the coefficients of the differential equation in term of x(t) 
a = [1 6 8];% vector containing the coefficients of the differential equation in term of y(t) 
h=impulse(b,a,t);% determine the impulse response of the system using the impulse command
x=unit_step (t);
y=0.01*conv(double(x),h);
plot(0:.01:4, y(1:401),'k')% plot the accurate part of the result of the convolution for time interval 0 ≤ t ≤ 4
title ( 'the output of this system in response to a step function input')

%% Practice 4.1.3

 h=(1/2)*(exp(-2*tout)-exp(-4*tout));
 plot(tout, h, 'b')
 hold on
 plot(tout,simout.data, 'r')



