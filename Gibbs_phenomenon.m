function xN=Gibbs_phenomenon(N,T,T1)
t=-6:.001:6;
w0=2*pi/T;
xN=2*(T1/T)*ones(size(t));

for k=1:N
    apk =2*sin(k*w0*T1)./(k*w0*T);
    ank=2*sin(k*w0*T1)./(k*w0*T);
    xk=apk*exp(1i*k*w0*t)+ank*exp(1i*(-k)*w0*t);
    xN=xN+xk;
end
plot(t,xN);
ax =gca;
ax.XAxisLocation ='origin';
ax.YAxisLocation ='origin';
ax.Box='off';
axis([-6 6 -0.5 1.5]);
title(sprintf('T = %0.1fT_{1}, N = %d',T/T1,N));
end
