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
filter = (abs(u)<0.006) & (abs(v)<0.006);
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
filter = (abs(u)<0.006) & (abs(v)<0.006);
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

title("Rectangular LPF with |u|<0.006 and |v|<0.006 [aka40]")

print -dpng IP2_EX8_Plot1.png

figure(6); clf
imagesc(xfiltered); axis equal; colormap gray; colorbar

title("Rectangular LPF with |u|<0.006 and |v|<0.006 no Scaling [aka40]")

print -dpng IP2_EX8_Plot6.png


figure(7); clf
surfc(xfiltered); colormap gray; shading interp; colorbar
title("Rectangular LPF with |u|<0.006 and |v|<0.006 no Scaling [aka40]")

print -dpng IP2_EX8_Plot7.png



