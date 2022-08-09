clear
img = imread('PM5544_with_non-PAL_signals.png');
figure(1); clf
image(img); axis equal
title('Original Test Card [aka40]')

print -dpng IP1_EX8_Plot0.png


BoxBlur = ones(21,21)/(21^2);
for k=1:3
    y1(:,:,k) = conv2(img(:,:,k), BoxBlur, 'valid');
end
y1=uint8(y1);
figure(2); clf
image(y1); 
axis equal; colormap gray
title('Box Blur Test Card [aka40]');
print -dpng IP1_EX8_Plot1.png

gb5= [1 4 6 4 1; 4 16 24 16 4; 6 24 36 24 6;  4 16 24 16 4; 1 4 6 4 1]/256;
for k=1:3
    y2(:,:,k) = conv2(img(:,:,k), gb5, 'valid');
end
y2=uint8(y2);
figure(3); clf
image(y2); 
axis equal; colormap gray
title('Gaussian Blur Test Card [aka40]');
print -dpng IP1_EX8_Plot2.png

SobelX=[-1 0 1; -2 0 2; -1 0 1];
for k=1:3
    y3(:,:,k) = conv2(img(:,:,k), SobelX, 'valid');
end
y3=uint8(y3);
figure(4); clf
image(y3); 
axis equal; colormap gray
title('Sobel Vertical Edges Test Card [aka40]');
print -dpng IP1_EX8_Plot3.png

SobelY=[1 2 1; 0 0 0; -1 -2 -1];
for k=1:3
    y4(:,:,k) = conv2(img(:,:,k), SobelY, 'valid');
end

y4=uint8(y4);
figure(5); clf
image(y4); 
axis equal; colormap gray
title('Sobel Horizontal Edges Test Card [aka40]');
print -dpng IP1_EX8_Plot4.png


Sobel = sqrt(SobelY.^2 + SobelX.^2);
for k=1:3
    y5(:,:,k) = (y4(:,:,k).^2 + y3(:,:,k).^2);
end

y5=uint8(y5);
figure(6); clf
imagesc(y5); 
axis equal; colormap gray
title('Sobel Edges Test Card [aka40]');
print -dpng IP1_EX8_Plot5.png

