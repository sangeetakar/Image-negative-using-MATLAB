% Read the input image
inputImage = imread('mammogram.tif'); % Replace with your image file

% Get the maximum intensity level
L = 256; % For 8-bit images, L is 256

% Apply the negative transformation
negativeImage = L - 1 - inputImage;

% Display the original and negative images
figure;
subplot(1, 2, 1);
imshow(inputImage);
title('Original Image');

subplot(1, 2, 2);
imshow(negativeImage);
title('Negative Image');
imwrite(negativeImage,'negative.png');



