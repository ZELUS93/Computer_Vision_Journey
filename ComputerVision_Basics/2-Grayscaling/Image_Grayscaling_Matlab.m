%% --- RGB image to grayscale image conversion MATLAB code --- %%
%% --- Init --- %% 
clear, close all; 
clc;
%% --- Step.1: loading the colored image from the working directory --- %%
Image = imread('C:\Users\El Mehdi Naor\Jupyter\images\trex.png');
%% --- Step.2: convert the colored image to a grayscaled image --- %%
grayImage = rgb2gray(Image);
%% --- Step.3: display the colored and the grayscaled image --- %% 
figure
subplot(1,2,1), imshow(Image), title('Colored Image'),
subplot(1,2,2), imshow(grayImage), title('Grayscaled Image'), 
imtool(grayImage);
%% --- Step.4: Saving the grayscaled image --- %%
imwrite(grayImage,'Grayscaled_Trex_Matlab.jpg'); 
%% --- If everything has worked correctly, two images are displayed on your screen: a colored Trex image and the grayscaled one --- %%