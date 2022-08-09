clear
array = zeros(200,200,3);
array(:,:,1)= rand(200,200);
array(:,:,2)= rand(200,200);
array(:,:,3)= rand(200,200);
figure(1);clf
image(array)
axis equal
title("Random colors [aka40]")

print -dpng IP1_EX2_Plot1.png

% The images randomly colored dots. When the code is recompiled. The dots
% appear as if they were scattered in a different order. 