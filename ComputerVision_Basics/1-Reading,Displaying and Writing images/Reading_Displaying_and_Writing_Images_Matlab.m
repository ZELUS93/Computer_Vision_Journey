%% --- Read, Display and Writing Images using Matlab --- %%
%% --- Init --- %%
clear, close all
clc 
%% --- Step1: Reading an image und display it's dimension --- %%
% Images are read into the Matlab environment using the 'imread(filename(or path))' built-in function %
% The following statement reads the image from a Directory into image array 'image' %
image = imread('C:\Users\El Mehdi Naor\Jupyter\images\trex.png'); 
% Displaying the size [Dimension] of the image %
[Height,Width,Channel] = size(image);
disp(['Height of Image: ', num2str(Height)]);
disp([' Width of Image: ', num2str(Width)]);
disp('Image dimension was successfully displayed !');
%% --- Step2: Displaying an Image --- %%
% Images are displazed on the MATLAB desktop using the 'imshow(filename(or path))' MATLAB built-in function %
% The following statement displays the image. In our case the image of a T-Rex % 
imshow(image);
% The 'imtoo(filename)' command provides a more interactiv environment for viewing and navigating within images, displaying detailed information about pixel values etc... %
imtool(image);
%% --- Step3: Writing an Image --- %%
% Images are written to the Current Directory using the 'imwrite(filename)' MATLAB built-in function %
% The following statement writes 'img' to a file called 'trex.png' %
imwrite(image,'img.png');
%% --- If everything has worked correctly, you should see a T-Rex on your screen --- %%



