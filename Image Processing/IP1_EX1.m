clear
rad = 100;
del = 10;
[x, y] = meshgrid((-3*rad-del):(3*rad+del));
[rows, cols] = size(x);
p=0.05;
dist = @(x, y, xc, yc) sqrt((x-xc).^2+(y-yc).^2);
venn_img = zeros(rows, cols, 3);
venn_img(:,:,1) = 1./(1+p*sqrt((x-rad.*cos(0)).^2+(y-rad.*sin(0)).^2));
venn_img(:,:,2) = 1./(1+p*sqrt((x-rad.*cos(2*pi/3)).^2+(y-rad.*sin(2*pi/3)).^2));
venn_img(:,:,3) = 1./(1+p*sqrt((x-rad.*cos(4*pi/3)).^2+(y-rad.*sin(4*pi/3)).^2));
figure(1); clf
image(venn_img)
axis equal
title("Color Blend with p=0.05 [aka40]")

print -dpng IP1_EX1_Plot1.png
p=0.005;
dist = @(x, y, xc, yc) sqrt((x-xc).^2+(y-yc).^2);
venn_img = zeros(rows, cols, 3);
venn_img(:,:,1) = 1./(1+p*sqrt((x-rad.*cos(0)).^2+(y-rad.*sin(0)).^2));
venn_img(:,:,2) = 1./(1+p*sqrt((x-rad.*cos(2*pi/3)).^2+(y-rad.*sin(2*pi/3)).^2));
venn_img(:,:,3) = 1./(1+p*sqrt((x-rad.*cos(4*pi/3)).^2+(y-rad.*sin(4*pi/3)).^2));
figure(2); clf
image(venn_img)
axis equal
title("Color Blend with p=0.005 [aka40]")

print -dpng IP1_EX1_Plot2.png

% The images show 3 circles with different colors at the center (red, green, blue). As the
% circles expand, the color fades away. The greater the p value the faster
% the color fades away.
% 