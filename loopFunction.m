function loopFunction(M,i)


N = 12 ;
n = 0:1:N-1; %Discrete time n is defined with step1 
x = sin (2*pi*M.*n./N); %defining dependent variable x[n]  
[~,T0] = rat(M/N) %calculate fundamental period using rational approximation (rat command. Notice there is no semicolon at the end of this command, that means matlab will display the result of the calculation
subplot(4,1,i)
stem(n ,x) %the discrete signal is drawn by using the command stem 
xlabel ('n'); %add text beside the X-axis on the current axis (ax= gca Control axes appearance and behaviour can also be used as the previous practice)
ylabel ('y[n]');%add text beside the Y-axis on the current axis
title('discrete sinusoidal signal example'); %adds text at the top of the current axis


