function modified_signal_plot (x,x_refl,x_shift,x_scaled,t)
subplot(4,1,1)
H = plot(t,x);
H.LineWidth = 1.5; H.Color ='red';
ax=gca ; 
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.YTick = [];
title('x(t)')
subplot(4,1,2)
H= plot(t,x_refl);
H.LineWidth = 1.5; H.Color ='red';
ax=gca ; 
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.YTick = [];
title('(x(-t))')
subplot(4,1,3);
H= plot(t,x_shift);
H.LineWidth = 1.5; H.Color ='red';
ax=gca ; 
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.YTick = [];
title('x(t+2))')
subplot(4,1,4)
H = plot(t,x_scaled);
H.LineWidth = 1.5; H.Color ='red';
ax=gca ; 
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.YTick = [];
ax.XTick = -4:1/2:4;
title('x(2t)')

