% semi-circle from 0 to 180 degrees
clc; clear all; clf; %clf is clear figure
r = 10;
thetaArray = linspace(pi,0,60);
lengthOfThetaArray = length(thetaArray);
xArray = zeros(lengthOfThetaArray,1);
yArray = zeros(lengthOfThetaArray,1);

%complete path
for index=1:1:lengthOfThetaArray
    theta = thetaArray(index);
    x = r*cos(theta);
    y = r*sin(theta);
    xArray(index) = x;
    yArray(index) = y;    
end

%Current position/displacement
figure(1)
axis([-4*r 4*r -4*r 4*r])
grid on;
for index=1:1:lengthOfThetaArray
    theta = thetaArray(index);
    x = r*cos(theta);
    y = r*sin(theta);
    plot(xArray,yArray,'b',x, y, 'r*');
    drawnow;
    %pause(0.01);
end

