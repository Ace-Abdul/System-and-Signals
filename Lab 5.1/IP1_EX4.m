clear
tc = linspace(0,1, 101);
xc = humps(tc);
deltatc = tc(2) - tc(1)
td = linspace(0,1,11);
xd = humps(td);
deltatd = td(2) - td(1)

figure(1),clf
plot (tc, xc, 'b-')
hold on
plot (td, xd, 'bo')
hold off 

title("Values [aka40]")

figure(2); clf
twopointdiff = diff(xc)/deltatc;
twopointdiff(end+1) = twopointdiff(end);
plot(tc,twopointdiff, 'b-');

hold on
plot(tc(1:10:end), twopointdiff(1:10:end), 'bo');

con1 = conv(xd, [1,0,-1]/2/deltatd, 'same')
plot (td, con1, 'mo')
title("Derivative Approximation (11 points) [aka40]")
hold off
print -dpng IP1_EX4_Plot11.png

figure(3); clf
tc = linspace(0,1, 101);
xc = humps(tc);
deltatc = tc(2) - tc(1)
td = linspace(0,1,51);
xd = humps(td);
deltatd = td(2) - td(1)
twopointdiff = diff(xc)/deltatc;
twopointdiff(end+1) = twopointdiff(end);
plot(tc,twopointdiff, 'b-');

hold on
plot(tc(1:100:end), twopointdiff(1:100:end), 'bo');

con1 = conv(xd, [1,0,-1]/2/deltatd, 'same')
plot (td, con1, 'mo')
title("Derivative Approximation (51 points) [aka40]")

% 

print -dpng IP1_EX4_Plot51.png

