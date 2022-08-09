clear 
tc = linspace(0,1, 101);
xc = humps(tc);
td = linspace(0,1,11);
xd = humps(td);
figure(1),clf
plot (tc, xc, 'b-')
hold on
plot (td, xd, 'bo')

movingAverage2 = conv(xd, ones(1,2)/2, 'same')
plot (td, movingAverage2, 'ro-')

movingAverage5 = conv(xd, ones(1,5)/5, 'same')
plot (td, movingAverage5, 'go-')
title("Moving Averages [aka40]")
hold off

print -dpng IP1_EX3_Plot1.png

% The 5 point moving average results in a smoother plot than the 2 point
% moving average. This is due to the 5 point moving average average larger
% samples of data this is. The 5 point moving average also has a lower peak than
% the 2 point moving average