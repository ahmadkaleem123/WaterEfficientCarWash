function [b,c] = takephotos(cam)
figure(1);
for i = 1:5
b = snapshot(cam);
end
pause(3)
for i = 1:10
b = snapshot(cam);
end
image(b);
pause(5)
for i = 1:10
c = snapshot(cam);
end
figure(2);
image(c);
end


%% Horizontally and vertically flipped. Brightness = 65 and contrast = 50 