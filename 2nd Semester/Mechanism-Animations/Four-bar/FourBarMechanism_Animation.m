%four-bar mechanism
length1 = 200; length2 = 60; length3 = 140; length4 = 160;
pointO = [0; 0]; pointC = [length1; 30];

%DOF = theta
thetaDegreesArray = 0:5:360; %in degrees, accordingly to be used
thetaRadiansArray = thetaDegreesArray*(pi/180.0);

thetaInitial = thetaRadiansArray(1);
pointA = pointO + length2*[cos(thetaInitial); sin(thetaInitial)];
[pointB1, pointB2] = CircleCircleIntersection(pointA, length3, pointC, length4);

%choose one of the solutions as the branch/configuration (elbow up/elbow
%down). The same should be used for subsequent frames/steps of animation
pointB = pointB1;

%Animation
figure(1)
set(gcf,'Position',[100 100 520 500]) % to have square shaped inner canvas
grid on
for index = 1:length(thetaRadiansArray)
    theta = thetaRadiansArray(index);    
    pointA = pointO + length2*[cos(theta); sin(theta)];
    [pointB1, pointB2] = CircleCircleIntersection(pointA, length3, pointC, length4);
    
    %pointB = pointB1;
    
    distBetweenPrevBandB1 = norm(pointB-pointB1);
    distBetweenPrevBandB2 = norm(pointB-pointB2);
    %Choose the solution that is nearest to the previous point C
    if(distBetweenPrevBandB1 < distBetweenPrevBandB2)
        pointB = pointB1;
    else
        pointB = pointB2;
    end     


    plot([pointO(1) pointA(1)], [pointO(2) pointA(2)], 'r-o');
    hold on;
    plot([pointA(1) pointB(1)], [pointA(2) pointB(2)], 'b-o');
    plot([pointB(1) pointC(1)], [pointB(2) pointC(2)], 'm-o');
    plot([pointO(1) pointC(1)], [pointO(2) pointC(2)], 'k-.');
    axis([-100 300 -200 200]); % can be set as per the link dimensions
    hold off;
    drawnow();
    %pause(0.001); %uncomment on MATLAB from computer    
end