%four-bar mechanism
clc; clearvars; clf;
length1 = 200; length2 = 60; length3 = 140; length4 = 160;
pointO = [0; 0]; pointC = [length1; 0];

%DOF = theta
thetaDegreesArray = 0:5:360; %in degrees, accordingly to be used
thetaRadiansArray = thetaDegreesArray*(pi/180.0);

thetaInitial = thetaRadiansArray(1);
pointA = pointO + length2*[cos(thetaInitial); sin(thetaInitial)];
[pointB1, pointB2] = CircleCircleIntersection(pointA, length3, pointC, length4);

%choose one of the solutions as the branch/configuration (elbow up/elbow
%down). The same should be used for subsequent frames/steps of animation
pointB = pointB1;

pointATrace = zeros(1,2);
pointBTrace = zeros(1,2);
couplerMidpointTrace = zeros(2,1);

%Animation
figure(1)
set(gcf,'Position',[100 100 700 700]) % to have square shaped inner canvas
grid on
axis equal
for index = 1:length(thetaRadiansArray)
    theta = thetaRadiansArray(index);    
    pointA = pointO + length2*[cos(theta); sin(theta)];
    [pointB1, pointB2] = CircleCircleIntersection(pointA, length3, pointC, length4);
    distBetweenPrevBandB1 = norm(pointB-pointB1);
    distBetweenPrevBandB2 = norm(pointB-pointB2);
    %Choose the solution that is nearest to the previous point B
    if(distBetweenPrevBandB1 < distBetweenPrevBandB2)
        pointB = pointB1;
    else
        pointB = pointB2;
    end  
    
    pointATraceXArray(index) = pointA(1);
    pointATraceYArray(index) = pointA(2);
    
    pointBTraceXArray(index) = pointB(1);
    pointBTraceYArray(index) = pointB(2);
    
    couplerMidPointX = (pointA(1)+pointB(1))*0.5;
    couplerMidPointY = (pointA(2)+pointB(2))*0.5;
    couplerMidpointTraceXArray(index) = couplerMidPointX;
    couplerMidpointTraceYArray(index) = couplerMidPointY;
    
    plot([pointO(1) pointA(1)], [pointO(2) pointA(2)], 'r-o');
    hold on;
    plot([pointA(1) pointB(1)], [pointA(2) pointB(2)], 'b-o');
    plot([pointB(1) pointC(1)], [pointB(2) pointC(2)], 'm-o');
    plot([pointO(1) pointC(1)], [pointO(2) pointC(2)], 'k-.');
    %trace all points stored till now
    %trace of point A B
    plot(pointATraceXArray,pointATraceYArray,'g.');
    plot(pointBTraceXArray,pointBTraceYArray,'b.');
    %plot(pointBTraceXArray, pointBTraceYArray, 'r-.');
    plot(couplerMidpointTraceXArray, couplerMidpointTraceYArray, 'b-.');
    plot(couplerMidPointX, couplerMidPointY, 'b*');
    %plot(pointCTraceXArray, pointCTraceYArray, 'm-.');
    axis([-100 300 -200 200]); % can be set as per the link dimensions
    hold off;
    drawnow();
    pause(0.05); %uncomment on MATLAB from computer      
end