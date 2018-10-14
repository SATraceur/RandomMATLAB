function even_odd_plot(x,x_ev,x_od,t)
subplot(1,4,1)
H = plot(t,x,'r');	%Plot original signal x(t)
H.LineWidth = 1.5; %H.Color ='red';	Set linewidth to 1.5 and colour to red
ax=gca ; 	%Control axes appearance and behaviour
ax.XAxisLocation = 'origin';	%Display the Y-axis so that it passes through the origin point (0,0).
ax.YAxisLocation = 'origin';	%Display the x-axis so that it passes through the origin point (0,0).
ax.YTick = [];	%Remove Y-axis Tick marks
ax.XTick = 0;	%Define X-axis thick mark at location 0 only
title('x(t)')	
subplot(1,4,2)	
H= plot(t,x_ev);	
H.LineWidth = 1.5; H.Color ='red';	
ax=gca ; 	
ax.XAxisLocation = 'origin';	
ax.YAxisLocation = 'origin';	
ax.YTick = [];	
ax.XTick = 0;	
title('Ev(x(t))')	
subplot(1,4,3);	
H= plot(t,x_od);	
H.LineWidth = 1.5; H.Color ='red';	
ax=gca ; 	
ax.XAxisLocation = 'origin';	
ax.YAxisLocation = 'origin';	
ax.YTick = [];	
ax.XTick = 0;
title('Od(x(t))')
subplot(1,4,4)
H = plot(t,x_ev+x_od);
H.LineWidth = 1.5; H.Color ='red';
ax=gca ; 
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.YTick = [];
ax.XTick = 0;
title('Od(x(t)+Ev(x(t))')

