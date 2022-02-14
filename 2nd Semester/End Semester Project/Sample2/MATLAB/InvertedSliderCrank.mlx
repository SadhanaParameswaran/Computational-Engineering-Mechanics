clc;clf;clearvars;
% Defining the length of the links
fx=168; fy=20; L2=20; L2dash=5; L3=100; 
L3dash=70; L4=100; L5=140; L1=10;

% Defining the fixed points
pointO = [0; 0];
pointB0 = [fx; L1];
pointA0 = [0; fy+L1];
pointmid = [0;fy];
pointOdash=[fx;0];

% DOF = Theta
thetaDegreesArray = 0:18.76:1800; % Theta in degrees
thetaRadiansArray = thetaDegreesArray*(pi/180.0);% Theta in radians

thetaInitial = thetaRadiansArray(1);
% Defining Point A
pointA = pointA0 + L2*[cos(thetaInitial); sin(thetaInitial)];
[pointB1, pointB2] = CircleCircleIntersection(pointA, L3, pointB0, L4);

% Choosing One of the points of intersection of the 2 circles to be Point B 
pointB = pointB1;

% Point A is a point of Intersection of lineA0A &
% Circle with centre A and  radius L2dash
[pointAdash1, pointAdash2] = LineCircleIntersection(pointA0, pointA, pointA, L2dash);
 pointAdash = pointAdash2;
 
% Point C is a point of Intersection of lineAB &
% Circle with centre A and  radius L3dash
[pointC1, pointC2] = LineCircleIntersection(pointA, pointB, pointAdash, L3dash);
 pointC = pointC1;
 
 
 % Defining Point M
 [pointM1, pointM2] = RayCircleIntersection(pointAdash, pointC, pointAdash, L5);
 pointM = pointM2;

%hold on

%Animation
figure(1)
grid on,set(gca,'FontSize',15)
set(gcf,'Position',[200 100 1200 900])
grid on

% Creating Zero arrays of x&y Co-ordinates of Point M
Mxarray=zeros(length(thetaRadiansArray));
Myarray=zeros(length(thetaRadiansArray));

for index = 1:length(thetaRadiansArray)
    theta = thetaRadiansArray(index);
    
    pointA = pointA0 + L2*[cos(theta); sin(theta)];
   
    [pointB1, pointB2] = CircleCircleIntersection(pointA, L3, pointB0, L4);
    pointB = pointB1;
    
    distBetweenPrevBandB1 = norm(pointB-pointB1);
    distBetweenPrevBandB2 = norm(pointB-pointB2);   

    [pointAdash1, pointAdash2] = LineCircleIntersection(pointA0, pointA, pointA, L2dash);
     pointAdash = pointAdash2;
     
    [pointC1, pointC2] = LineCircleIntersection(pointA, pointB, pointAdash, L3dash);
    pointC = pointC1;
    
     
    [pointM1, pointM2] = RayCircleIntersection(pointAdash, pointC, pointAdash, L5);
    pointM = pointM2;
    % Populating the x&y Co-ordinate arrays of Point M
    Mxarray(index)=pointM(1);
    Myarray(index)=pointM(2);
    
    % Unit Direction of line A'C
    w=(pointC-pointAdash)/norm(pointC-pointAdash);
    % Angle of inclination of line A'C
    thetasliding=atan2(w(2),w(1));
    
    % Definig the points of the Slider wrt PointC by using angle of inclination
    % of line A'c
    m1 = [pointC(1)+10*cos(thetasliding+(pi/4));pointC(2)+10*sin(thetasliding+(pi/4))];
    m2 = [pointC(1)+10*cos(thetasliding+(3*pi/4));pointC(2)+10*sin(thetasliding+(3*pi/4))];
    m3 = [pointC(1)+10*cos(thetasliding-(3*pi/4));pointC(2)+10*sin(thetasliding-(3*pi/4))];
    m4 = [pointC(1)+10*cos(thetasliding-(pi/4));pointC(2)+10*sin(thetasliding-(pi/4))];
       
       
    plot([pointO(1) pointmid(1)], [pointO(2) pointmid(2)], 'b','LineWidth',5);% y
    hold on;
    % Plotting all the points 
    plot(pointAdash(1),pointAdash(2),'k.','MarkerSize',20)
    plot(pointM(1),pointM(2),'k.','MarkerSize',30)
    plot(Mxarray,Myarray,'k.','MarkerSize',5) % Trace
    plot(pointC(1),pointC(2),'g.','MarkerSize',20)
    plot(pointB(1),pointB(2),'k.','MarkerSize',30)
    plot(pointA0(1),pointA0(2),'k.','MarkerSize',30)
    plot(pointB0(1),pointB0(2),'k.','MarkerSize',30)
    plot(pointA(1),pointA(2),'k.','MarkerSize',20)

    % Defining Colors
    Orange = '#ffb76a';
    OrangeColor = sscanf(Orange(2:end),'%2x%2x%2x',[1 3])/255;
    yellowBright = '#fbfe32';
    yellowBrightColor = sscanf(yellowBright(2:end),'%2x%2x%2x',[1 3])/255;
    yellowDull = '#f3f700';
    yellowDullColor = sscanf(yellowDull(2:end),'%2x%2x%2x',[1 3])/255;
    
    % Plotting all the links
    plot([pointAdash(1) pointM(1)], [pointAdash(2) pointM(2)],'color',OrangeColor,'LineWidth',3.5);%L1
    plot([pointmid(1) pointA0(1)], [pointmid(2) pointA0(2)], 'c','LineWidth',3.5);%L1
    plot([pointA0(1) pointA(1)], [pointA0(2) pointA(2)], 'r-','LineWidth',3.5);%L2
    plot([pointA(1) pointB(1)], [pointA(2) pointB(2)],'color',yellowBrightColor,'LineWidth',3.5);%L3
    plot([pointB(1) pointB0(1)], [pointB(2) pointB0(2)],'color',yellowDullColor,'LineWidth',3.5);%L4
    plot([pointB0(1) pointOdash(1)], [pointB0(2) pointOdash(2)], 'c-','LineWidth',3.5);%L1
    plot([pointOdash(1) pointO(1)], [pointOdash(2) pointO(2)], 'b-','LineWidth',5);%x
    title('Team-5  (InvertedSliderCrank connected in parallel to a FourBarMech)', 'FontSize', 24);
    xlabel('X-axis', 'FontSize', 24);
    ylabel('Y-axis', 'FontSize', 24)
    
    % Plotting the slider
    plot([m1(1) m2(1) m3(1) m4(1) m1(1)], [m1(2) m2(2) m3(2) m4(2) m1(2)],'g','LineWidth',3);hold on
  
    axis([-40 200 -60 200]); % can be set as per the link dimensions
    hold off;
    drawnow();
end
