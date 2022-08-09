clear
x = zeros(399,399);
x(:,:)= randi(255,399);

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
filter = sqrt(u.^2+v.^2)<0.006;
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
title("LPF of Radius 0.006 [aka40]")
print -dpng IP2_EX5_Plot1.png

filter = sqrt(u.^2+v.^2)<0.06;

Xsfiltered = Xs.*filter;
Xfiltered = ifftshift(Xsfiltered);
xfiltered = ifft2(Xfiltered);
figure(6); clf
imagesc(xfiltered); axis equal; colormap gray; colorbar
title("LPF of Radius 0.006 without Scaling [aka40]")
print -dpng IP2_EX5_Plot6.png

figure(7); clf
surfc(xfiltered); colormap gray; shading interp; colorbar
title("Surface of LPF of Radius 0.006 without Scaling [aka40]")
print -dpng IP2_EX5_Plot7.png



