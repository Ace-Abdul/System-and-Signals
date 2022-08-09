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
filter = (abs(u)<0.5) & (abs(v)<0.5);
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
print -dpng trash.png

title("Rectangular LPF with |u|<0.5 and |v|<0.5 [aka40]")

print -dpng IP2_EX6_Plot1.png


filter = (abs(u)<0.5) & (abs(v)<0.4);
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
print -dpng trash.png

title("Rectangular LPF with |u|<0.5 and |v|<0.4 [aka40]")

print -dpng IP2_EX6_Plot2.png

filter = (abs(u)<0.5) & (abs(v)<0.3);
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
print -dpng trash.png

title("Rectangular LPF with |u|<0.5 and |v|<0.3 [aka40]")

print -dpng IP2_EX6_Plot3.png

filter = (abs(u)<0.5) & (abs(v)<0.2);
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
print -dpng trash.png

title("Rectangular LPF with |u|<0.5 and |v|<0.2 [aka40]")

print -dpng IP2_EX6_Plot4.png

filter = (abs(u)<0.5) & (abs(v)<0.1);
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

title("Rectangular LPF with |u|<0.5 and |v|<0.1 [aka40]")

print -dpng IP2_EX6_Plot5.png

filter = (abs(u)<0.4) & (abs(v)<0.5);
figure(18); clf
imagesc(filter); axis equal; colormap gray; colorbar
print -dpng trash.png

Xsfiltered = Xs.*filter;
figure(19); clf
imagesc(log10(abs(Xsfiltered))); axis equal; colormap gray; colorbar
print -dpng trash.png

Xfiltered = ifftshift(Xsfiltered);
xfiltered = ifft2(Xfiltered);
figure(20); clf
imagesc(xfiltered, [0, 255]); axis equal; colormap gray; colorbar
print -dpng trash.png

title("Rectangular LPF with |u|<0.4 and |v|<0.5 [aka40]")

print -dpng IP2_EX6_Plot6.png


filter = (abs(u)<0.3) & (abs(v)<0.5);
figure(21); clf
imagesc(filter); axis equal; colormap gray; colorbar
print -dpng trash.png

Xsfiltered = Xs.*filter;
figure(22); clf
imagesc(log10(abs(Xsfiltered))); axis equal; colormap gray; colorbar
print -dpng trash.png

Xfiltered = ifftshift(Xsfiltered);
xfiltered = ifft2(Xfiltered);
figure(23); clf
imagesc(xfiltered, [0, 255]); axis equal; colormap gray; colorbar

title("Rectangular LPF with |u|<0.3 and |v|<0.5 [aka40]")

print -dpng IP2_EX6_Plot7.png

filter = (abs(u)<0.2) & (abs(v)<0.5);
figure(24); clf
imagesc(filter); axis equal; colormap gray; colorbar
print -dpng trash.png

Xsfiltered = Xs.*filter;
figure(25); clf
imagesc(log10(abs(Xsfiltered))); axis equal; colormap gray; colorbar
print -dpng trash.png

Xfiltered = ifftshift(Xsfiltered);
xfiltered = ifft2(Xfiltered);
figure(26); clf
imagesc(xfiltered, [0, 255]); axis equal; colormap gray; colorbar

title("Rectangular LPF with |u|<0.2 and |v|<0.5 [aka40]")

print -dpng IP2_EX6_Plot8.png

filter = (abs(u)<0.1) & (abs(v)<0.5);
figure(27); clf
imagesc(filter); axis equal; colormap gray; colorbar
print -dpng trash.png

Xsfiltered = Xs.*filter;
figure(28); clf
imagesc(log10(abs(Xsfiltered))); axis equal; colormap gray; colorbar
print -dpng trash.png

Xfiltered = ifftshift(Xsfiltered);
xfiltered = ifft2(Xfiltered);
figure(29); clf
imagesc(xfiltered, [0, 255]); axis equal; colormap gray; colorbar

title("Rectangular LPF with |u|<0.1 and |v|<0.5 [aka40]")

print -dpng IP2_EX6_Plot9.png

filter = (abs(u)<0.01) & (abs(v)<0.5);
figure(30); clf
imagesc(filter); axis equal; colormap gray; colorbar
print -dpng trash.png

Xsfiltered = Xs.*filter;
figure(31); clf
imagesc(log10(abs(Xsfiltered))); axis equal; colormap gray; colorbar
print -dpng trash.png

Xfiltered = ifftshift(Xsfiltered);
xfiltered = ifft2(Xfiltered);
figure(32); clf
imagesc(xfiltered, [0, 255]); axis equal; colormap gray; colorbar

title("Rectangular LPF with |u|<0.01 and |v|<0.5 [aka40]")

print -dpng IP2_EX6_Plot10.png

