clear
x = imread('coins.png');
h = ones(10,10)/10^2;
y = conv2(x,h, 'valid');

tc = linspace(0,1, 101);
xc = humps(tc);
deltatc = tc(2) - tc(1)
td = linspace(0,1,11);
xd = humps(td);
deltatd = td(2) - td(1)

figure(1),clf
image(x);
axis equal;
colormap gray; colorbar
title('Original [aka40]');

figure(2); clf
image(y)
axis equal; colormap gray; colorbar;
title("10x10 Blur [aka40]")
print -dpng IP1_EX6_Plot1.png


figure(4)
h = ones(2,50)/10^2;
y = conv2(x,h, 'valid');
image(y)
axis equal; colormap gray; colorbar;
title("2x50 Blur [aka40]")

print -dpng IP1_EX6_Plot2.png
figure(3)
h = ones(50,2)/10^2;
y = conv2(x,h, 'valid');
image(y)
axis equal; colormap gray; colorbar;
title("50x2 Blur [aka40]")

print -dpng IP1_EX6_Plot3.png

