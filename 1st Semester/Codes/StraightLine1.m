clc; clear all; clf; %compulsory for all programs
%Straight line motion between points P1 and P2 in 2D space
r1 = [10; 5]; r2 = [5; 10];
xAxisMin = -2; yAxisMin = -2; xAxisMax = 20; yAxisMax = 15;
lineX = [r1(1); r2(1)]; %collect all X coordinates of the line
lineY = [r1(2); r2(2)]; %collect all Y coordinates of the line

figure(1)
plot(lineX, lineY); %draws a line segment
axis([xAxisMin xAxisMax yAxisMin yAxisMax]);
%axis equal; % required to get 1:1 aspect ratio figures!!!

