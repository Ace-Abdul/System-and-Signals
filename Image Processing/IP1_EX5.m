clear
x = imread('coins.png');
h = ones(10,10)/10^2;
y = conv2(x,h, 'same');

figure(1),clf
image(x);
axis equal;
colormap gray; colorbar
title('Original [aka40]');

figure(2); clf
image(y)
axis equal; colormap gray; colorbar;
title("10x10 Blur [aka40]")
print -dpng IP1_EX5_Plot1.png


figure(4)
h = ones(2,50)/10^2;
y = conv2(x,h, 'same');
image(y)
axis equal; colormap gray; colorbar;
title("2x50 Blur [aka40]")

print -dpng IP1_EX5_Plot2.png
figure(3)
h = ones(50,2)/10^2;
y = conv2(x,h, 'same');
image(y)
axis equal; colormap gray; colorbar;
title("50x2 Blur [aka40]")

print -dpng IP1_EX5_Plot3.png

