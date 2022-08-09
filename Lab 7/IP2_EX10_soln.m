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
HPF = (abs(u)>0.2) | (abs(v)>0.3);
LPF = (abs(u)<0.4) & (abs(v)<0.5);
filter = HPF.*LPF;
figure(3); clf
imagesc(filter); axis equal; colormap gray; colorbar
title("Bandwidth Filter Image [aka40]");
print -dpng IP2_EX10_Plot1.png

Xsfiltered = Xs.*filter;
figure(4); clf
imagesc(log10(abs(Xsfiltered))); axis equal; colormap gray; colorbar
title("Bandwidth Filter FFT Image [aka40]");
print -dpng IP2_EX10_Plot2.png

Xfiltered = ifftshift(Xsfiltered);
xfiltered = ifft2(Xfiltered);
figure(5); clf
imagesc(xfiltered); axis equal; colormap gray; colorbar
title("Bandwidth filter with 0.2<abs(u)<0.3 and 0.3<abs(v)<0.5");
print -dpng IP2_EX10_Plot3.png