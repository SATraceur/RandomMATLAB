function exer114(multiple, i)

T1 = 1;
T = multiple*T1;
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
k=-20:20;
subplot(5,1,i)
stem(k,a)
title('the Fourier series coefficients a_{k} for T_{1}=1 and T=' + string(multiple) + 'T_{1}')
xlabel('k')