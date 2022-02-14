clc; clear all; clf;
steps = 60; thetaArray = linspace(0,2*pi,steps); radius = 10;
%Animation
line1X=[-2*radius 2*radius]; line1Y=[0 0]; line2X=[0 0];  line2Y=[-2*radius 2*radius];
figure(1)
grid on
for index=1:1:steps    
    theta = thetaArray(index); xParticle= radius*cos(theta); yParticle= radius*sin(theta);
    xArray(index) = xParticle; yArray(index) = yParticle;
    plot(line1X,line1Y,'b',line2X,line2Y,'b',...
        xArray, yArray, 'r', xParticle, yParticle, '-o');    
    axis([-3*radius 3*radius -3*radius 3*radius]); axis equal;
    drawnow; 
  %pause(0.01)
end
figure(2)
plot(thetaArray,xArray);
figure(3)
plot(thetaArray,yArray);