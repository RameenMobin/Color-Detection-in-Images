%choose any color from red, green, light blue, dark blue, yellow, orange,
%purple
color = 'red';  
% type image name below
image_name = 'image.png';
out = color_detector(color, image_name);
figure
imshow(out)
