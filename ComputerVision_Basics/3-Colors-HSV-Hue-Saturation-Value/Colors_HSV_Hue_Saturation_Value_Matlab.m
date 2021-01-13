%% ----- Changing Color-Space ----- %%  
%% ---- 1.Goal: ---- %%
%% - The objective of this tutorial is learning how to read and convert an image, -%%
%% - from one color-space to another (from RGB to HSV) using MATLAB - %%
%% - The code shown below was tested using MATLAB R2020a - %%

%% ---- 2.Introduction: ---- %% 
%% - The human perception of color is best described in terms of hue, saturation, and value. Hue describes the color type, or tone, of the color - %%
%% - (and very often is expressed by the "color name"), saturation provides a measure of its purity (or how much it has been diluted in white), - %%
%% - and Value refers to the intensity of light reflected from objects - %%

%% ----3.Let's get our hands dirty ---- %%
%% ----- Step 3.1: Init ----- %%
clear, close all ;
clc 
%% ----- Step 3.2: Reading an Image File ----- %%
%% - To read the original image, we simply need to call the MATLAB built-in function to open and read the contents of image files in most popular formats (e.g., JPEG, PNG, GIF ...), "imread(filepath)"- %%
%% - The "imread(filepath)" function allows us to read image files of almost any type, in virtually any format, located everywhere. This saves us from a potentially large number of problems associated - %%
%% - with file headers, memory allocation and so on, and allows to focus on what you want to do to the image once it has been read and stored into a variable in the MATLAB workspace - %%
image = imread('C:\Users\El Mehdi Naor\Jupyter\Matlab\Matlab_Images\Trex.png');

%% ----- Step 3.3: Converting the original Image to the HSV color space ----- %% 
%% - To convert the original image to the HSV color space, we call the MATLAB built-in function "rgb2hsv(filename)". - %%
%% - This function converts the red, green and blue values of an RGB image to hue, saturation, and value values of an HSV image - %%
HSV_image = rgb2hsv(image);

%% ----- Step 3.4: Display the results ----- %%  
figure
subplot(2,3,1), imshow(image), title('Original Image'), 
subplot(2,3,2), imshow(HSV_image), title('HSV Image'),
subplot(2,3,3), imshow(HSV_image(:,:,1)), title('Hue Channel'),
subplot(2,3,4), imshow(HSV_image(:,:,2)), title('Saturation Channel'),
subplot(2,3,5), imshow(HSV_image(:,:,3)), title('Value Channel'),
%% - If everything has worked correctly, five images are displayed on your screen - %% 

%% ----- Step 3.5: Saving the results ----- %%
%% - To save the results of our image processing to a file, we call the MATLAB built-in function "imwrite(actual-filename,new-filename)"
imwrite(HSV_image(:,:,1),'Hue_Channel_Trex.png');
imwrite(HSV_image(:,:,2),'Saturation_Channel_Trex.png');
imwrite(HSV_image(:,:,3),'Value_Channel_Trex.png'); 
%% - Check your actual working directory to see of the images were successfully saved under the specified names - %