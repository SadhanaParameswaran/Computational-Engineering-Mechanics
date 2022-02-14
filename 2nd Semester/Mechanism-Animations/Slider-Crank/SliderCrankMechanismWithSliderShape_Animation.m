
crank = 100; connectingRod = 300; 
pointA = [0 0]; dirSliding = [0.5, 0.866];
thetaSliding = atan2(dirSliding(2),dirSliding(1));

%DOF = theta
thetaDegreesArray = 0:1:360; %in degrees, accordingly to be used
thetaRadiansArray = thetaDegreesArray*(pi/180.0);
thetaInitial = thetaRadiansArray(1);

pointB = pointA + crank*[cos(thetaInitial) sin(thetaInitial)];
slidingLineStart = pointA - 500*dirSliding;
slidingLineEnd = pointA + 500*dirSliding;
[pointC1, pointC2] = LineCircleIntersection(slidingLineStart, slidingLineEnd, pointB, connectingRod);

%choose one of the solutions as the branch/configuration (slider right/slider left)
%The same should be used for subsequent frames/steps of animation
pointC = pointC1;

%Animation
figure(1)
set(gcf,'Position',[100 100 520 500]) % to have square shaped inner canvas
grid on
axis equal
for index = 1:length(thetaRadiansArray)
    theta = thetaRadiansArray(index);   
    pointB = pointA + crank*[cos(theta) sin(theta)];
    [pointC1, pointC2] = LineCircleIntersection(slidingLineStart, slidingLineEnd, pointB, connectingRod);
    distBetweenPrevCandC1 = norm(pointC-pointC1);
    distBetweenPrevCandC2 = norm(pointC-pointC2);
    %Choose the solution that is nearest to the previous point C
    if(distBetweenPrevCandC1 < distBetweenPrevCandC2)
        pointC = pointC1;
    else
        pointC = pointC2;
    end     
    
    
    plot([pointA(1) pointB(1)], [pointA(2) pointB(2)], 'r-o');
    hold on;
    plot([pointB(1) pointC(1)], [pointB(2) pointC(2)], 'b-o');
    
    SliderShape(80,40, pointC(1), pointC(2),thetaSliding);    
    
    plot([slidingLineStart(1) slidingLineEnd(1)], [slidingLineStart(2) slidingLineEnd(2)], 'k-.'); 
    axis([-500 500 -500 500]); % can be set as per the link dimensions
    hold off;
    drawnow();
    pause(0.001);    
end
