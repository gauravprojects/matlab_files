clear all
clc
%%
%Detect objects using Viola-Jones Algorithm
%Viola jones is a special machine learning algoritm to detect face
count=0;
%%
%To detect Face
FDetect = vision.CascadeObjectDetector;
% vison.CascadeObjectDetector is a special function for vision class

%%
%Read the input image

%%now integrating video into this

%camlist= webcamlist;
%cam=webcam(1);
%preview(cam);
%I= snapshot(cam);
I = imread('bill.jpg'); 

%Returns Bounding Box values based on number of objects
%counts the no of objects and returns bounding box around it
BB = step(FDetect,I);
I2=imcrop(I,BB);
imshow(I2);

figure,
imshow(I); hold on
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','r');
    count=count+1;
    %styling bounding box 
end
title('Face Detection');
hold off;


