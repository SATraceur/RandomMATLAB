function loopFunction2(alpha, i)

n = -6:6; % Definition of discrete time vector (with step 1) from -6 to 6
alph = alpha;% takes alpha >1 Matlab has a function called alpha, so it is better (safer) not to use it as a variable name
xn = alph.^n ; % Definition of dependent variable x[n], xn = alpha. ^n denotes element-by-element powers.
%figure;
subplot(4,1,i)
stem (n, xn); % using command stem which is more appropriate for drawing discrete signals
ax = gca;
ax.XLim = [-6.5, 6.5];
title ('C=1, alpha=' + string(alpha));
ax.XLabel.String = 'n';
ax.YLabel.String = 'x[n]';