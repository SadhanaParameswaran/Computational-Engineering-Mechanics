% semi-circle from 0 to 180 degrees
clc; clear all; clf; %clf is clear figure
r = 10;
noOfHumps = 3;
noOfIncrementsInEachHump = 30;
thetaArray = linspace(pi,0,noOfIncrementsInEachHump);
lengthOfThetaArray = length(thetaArray);

xArray = zeros(lengthOfThetaArray*noOfHumps,1);
yArray = zeros(lengthOfThetaArray*noOfHumps,1);
lengthOfDataArray = length(xArray); % or yArray

%complete path
for i=1:1:noOfHumps
    for j=1:1:lengthOfThetaArray
        theta = thetaArray(j);
        centerX = (2*(i)-1)*r;
        x = centerX+r*cos(theta);
        y = r*sin(theta);
        dataIndex = (i-1)*lengthOfThetaArray+j;
        xArray(dataIndex) = x;
        yArray(dataIndex) = y;
    end
end

%Current position/displacement
figure(1)
%axis([-4*r 4*r -4*r 4*r])
grid on;
for dataIndex=1:1:lengthOfDataArray    
    x = xArray(dataIndex);
    y = yArray(dataIndex);
    plot(xArray,yArray,'b',x, y, 'r*');
    drawnow;
    %pause(0.01);
end

