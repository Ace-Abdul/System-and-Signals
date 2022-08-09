clear
x = imread('coins.png');
gb5= [1 4 6 4 1; 4 16 24 16 4; 6 24 36 24 6;  4 16 24 16 4; 1 4 6 4 1]/256;

y1 = conv2(x,gb5, 'valid');
CoinEdgeX=[1 0 -1;1 0 -1; 1 0 -1];
CoinEdgeY=[1 1 1;0 0 0; -1 -1 -1];
figure(1),clf
image(y1);
axis equal;
colormap gray; colorbar
title('Coin Gaussian Blur [aka40]');
print -dpng IP1_EX7_Plot1.png


y2 = conv2(x, CoinEdgeX, 'valid');
figure(2),clf
imagesc(y2);
axis equal;
colormap gray; colorbar
title('Coin Vertical Edges [aka40]');
print -dpng IP1_EX7_Plot2.png

y3 = conv2(x, CoinEdgeY, 'valid');
figure(3),clf
imagesc(y3);
axis equal;
colormap gray; colorbar
title('Coin Horizontal Edges [aka40]');
print -dpng IP1_EX7_Plot3.png

y4= sqrt(y2.^2 + y3.^2);
figure(4),clf
imagesc(y4);
axis equal;
colormap gray; colorbar
title('Coin Edges [aka40]');
print -dpng IP1_EX7_Plot4.png


h = [-1 -1 -1; -1 8 -1; -1 -1 -1];
y5 = conv2(x,h, 'valid');
figure(5),clf
imagesc(y5);
axis equal;
colormap gray; colorbar
title('Alternate Coin Edges [aka40]');
print -dpng IP1_EX7_Plot5.png






