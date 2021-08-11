%choose any color from red, green, light blue, dark blue, yellow, orange,
%purple
color = 'green';  
% type image name below
image_name = 'img3.png';
for i = 1:7
    if i == 1
        color = 'red';
        out1 = color_detector(color, image_name);
    elseif i == 2
        color = 'light blue';
        out2 = color_detector(color, image_name);
    elseif i == 3
        color = 'green';
        out3 = color_detector(color, image_name);
    elseif i == 4
        color = 'purple';
        out4 = color_detector(color, image_name);
    elseif i == 5
        color = 'orange';
        out5 = color_detector(color, image_name);
    elseif i == 6
        color = 'yellow';      
        out6 = color_detector(color, image_name);
    elseif i == 7
        color = 'dark blue';
        out7 = color_detector(color, image_name);
    end
end
figure
subplot(2,4,1)
imshow(image_name)
title('original')
subplot(2,4,2)
imshow(out1)
title('red')
subplot(2,4,3)
imshow(out2)
title('light blue')
subplot(2,4,4)
imshow(out3)
title('green')
subplot(2,4,5)
imshow(out4)
title('purple')
subplot(2,4,6)
imshow(out5)
title('orange')
subplot(2,4,7)
imshow(out6)
title('yellow')
subplot(2,4,8)
imshow(out7)
title('dark blue')
