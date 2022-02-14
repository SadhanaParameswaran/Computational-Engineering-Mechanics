clc; clear all; clf; %compulsory for all programs
%Straight line motion between points P1 and P2 in 2D space
r1 = [10; 5]; r2 = [5; 10];
xAxisMin = -2; yAxisMin = -2; xAxisMax = 20; yAxisMax = 15;
lineX = [r1(1); r2(1)]; %collect all X coordinates of the line
lineY = [r1(2); r2(2)]; %collect all Y coordinates of the line

%t is the parameter
steps = 20;
tArray = linspace(0,1,steps); %required for animation
deltaR = r2-r1; % column vector, does not change with time

figure(1)
grid on
for index=1:1:steps
    t = tArray(index); %reading the data
    r = r1 + t*deltaR; %intermediate point
    x = r(1);
    y = r(2);
    plot(lineX, lineY, 'b', x, y, 'ro');
    axis([xAxisMin xAxisMax yAxisMin yAxisMax]);
    drawnow; %updates the figure
    %pause(0.01); %for time delay, can be ignored in Web version
end




