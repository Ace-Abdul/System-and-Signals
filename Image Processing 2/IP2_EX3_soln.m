clear
x = imread('coins.png');
x = x(2:end, 2:end);
figure(1); clf
image(x); axis equal; colormap gray; colorbar
print -dpng trash.png

X = fft2(x);
Xs = fftshift(X);
figure(2); clf
imagesc(log10(abs(Xs))); axis equal; colormap gray; colorbar
print -dpng trash.png

[rows, cols] = size(x);
max_size = max(rows, cols);
rnorm = rows/max_size; cnorm = cols/max_size;
[v, u] = meshgrid(linspace(-cnorm, cnorm, cols),...
    linspace(-rnorm, rnorm, rows)) ;
filter = sqrt(u.^2+v.^2)<0.5;
figure(3); clf
imagesc(filter); axis equal; colormap gray; colorbar
print -dpng trash.png

Xsfiltered = Xs.*filter;
figure(4); clf
imagesc(log10(abs(Xsfiltered))); axis equal; colormap gray; colorbar
print -dpng trash.png

Xfiltered = ifftshift(Xsfiltered);
xfiltered = ifft2(Xfiltered);
figure(5); clf
imagesc(xfiltered, [0, 255]); axis equal; colormap gray; colorbar
title("LPF of Radius 0.5 [aka40]")
print -dpng IP2_EX3_Plot1.png

filter = sqrt(u.^2+v.^2)<0.4;
figure(6); clf
imagesc(filter); axis equal; colormap gray; colorbar
print -dpng trash.png

Xsfiltered = Xs.*filter;
figure(7); clf
imagesc(log10(abs(Xsfiltered))); axis equal; colormap gray; colorbar
print -dpng trash.png

Xfiltered = ifftshift(Xsfiltered);
xfiltered = ifft2(Xfiltered);
figure(8); clf
imagesc(xfiltered, [0, 255]); axis equal; colormap gray; colorbar
title("LPF of Radius 0.4 [aka40]")
print -dpng IP2_EX3_Plot2.png

filter = sqrt(u.^2+v.^2)<0.3;
figure(9); clf
imagesc(filter); axis equal; colormap gray; colorbar
print -dpng trash.png

Xsfiltered = Xs.*filter;
figure(10); clf
imagesc(log10(abs(Xsfiltered))); axis equal; colormap gray; colorbar
print -dpng trash.png

Xfiltered = ifftshift(Xsfiltered);
xfiltered = ifft2(Xfiltered);
figure(11); clf
imagesc(xfiltered, [0, 255]); axis equal; colormap gray; colorbar
title("LPF of Radius 0.3 [aka40]")
print -dpng IP2_EX3_Plot3.png


filter = sqrt(u.^2+v.^2)<0.2;
figure(12); clf
imagesc(filter); axis equal; colormap gray; colorbar
print -dpng trash.png

Xsfiltered = Xs.*filter;
figure(13); clf
imagesc(log10(abs(Xsfiltered))); axis equal; colormap gray; colorbar
print -dpng trash.png

Xfiltered = ifftshift(Xsfiltered);
xfiltered = ifft2(Xfiltered);
figure(14); clf
imagesc(xfiltered, [0, 255]); axis equal; colormap gray; colorbar
title("LPF of Radius 0.2 [aka40]")
print -dpng IP2_EX3_Plot4.png


filter = sqrt(u.^2+v.^2)<0.1;
figure(15); clf
imagesc(filter); axis equal; colormap gray; colorbar
print -dpng trash.png

Xsfiltered = Xs.*filter;
figure(16); clf
imagesc(log10(abs(Xsfiltered))); axis equal; colormap gray; colorbar
print -dpng trash.png

Xfiltered = ifftshift(Xsfiltered);
xfiltered = ifft2(Xfiltered);
figure(17); clf
imagesc(xfiltered, [0, 255]); axis equal; colormap gray; colorbar
title("LPF of Radius 0.1 [aka40]")
print -dpng IP2_EX3_Plot5.png



