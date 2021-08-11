function result = color_detector(color, I_name)
    I = imread(I_name);

    R = I(:,:,1);
    G = I(:,:,2);
    B = I(:,:,3);
    %for yellow
    if strcmp(color,'red')
        redMask = (R >= 100)&(R <= 255);
        greenMask = (G <= 30);
        blueMask = (B <= 60) ;
    elseif strcmp(color , 'light blue')
        redMask = (R <= 110);
        greenMask = (G <= 150);
        blueMask = (B >= 110) & (B <= 255);
    elseif strcmp(color, 'dark blue')
        redMask = (R <= 50);
        greenMask = (G <= 150);
        blueMask = (B >= 100) & (B <= 255);
    elseif strcmp(color, 'green')
        redMask = (R <= 120);
        greenMask = (G >= 100) ;
        blueMask = (B <= 100) ;
    elseif strcmp(color,'orange')
        redMask = (R >= 200);
        greenMask = (G <= 155) & (G >= 60);
        blueMask = (B <= 50) ;
    elseif strcmp(color,'purple')
        redMask = (R >= 100) & (R <= 160);
        greenMask =  (G <= 100);
        blueMask = (B >= 90) & (B <= 255)  ;
    elseif strcmp(color, 'yellow')
        redMask = (R >= 160);
        greenMask =  (G >= 150);
        blueMask = (B <= 70);
        
    end
        
    redObjectsMask = uint8(redMask & greenMask & blueMask);
    redObjectsMask = cast(redObjectsMask, class(R));
    R1 = redObjectsMask .* R;
    G1 = redObjectsMask .* G;
    B1 = redObjectsMask .* B;

    result = cat(3,R1,G1,B1);
 
end