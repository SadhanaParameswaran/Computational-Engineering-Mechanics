%Clear Command Window
clc; 
%Clears Workspace
clear all; 
%Clears Figure Window
clf; 

% create axes (X-Axis ans Y-Axis)
plot([-20 200] , [0 0] , 'k');
hold on;
plot([0 0] , [-20 200] , 'k');
hold on;
axis equal;

% Assuming the Centroid of the whole system to be the origin
Assumed_Centroid = [0 0];
plot(Assumed_Centroid(1) , Assumed_Centroid(2) , 'c.', 'MarkerSize', 20);
hold on;

% Centroid of the Whole figure
Centroid = [69.6495  60.5028];
plot(Centroid(1) , Centroid(2) , 'c+', 'MarkerSize', 20);
hold on;

% Plot the Small Square (A)
x = [47 88 88 47 47]; 
y = [0 0 -41 -41 0]; 
plot(x,y,'g', 'LineWidth',2);
hold on;
% Marking the Centroid of the Small Square
A = [67.5 -20.5];
plot(A(1) , A(2) , 'g.', 'MarkerSize', 20);
hold on;

% Plot the Quarter Circle (B)
R = 41. ; 
D = [128. 47.] ; 
% angle 
theeta = 90:-1:0 ; 
% points of circle 
xc = D(1)+R*cosd(theeta) ; 
yc = D(2)+R*sind(theeta) ;
%Plot curve of Quarter Circle
plot(xc,yc, 'k', 'LineWidth',2);
% plot line of Quarter Circle ([x1 x2] , [y1 y2]) 
plot([128 169], [47 47], 'k', 'LineWidth',2);
hold on;
% Marking the Centroid of the Quarter circle
D = [145.4098 64.4098];
plot(D(1) , D(2) , 'k.', 'MarkerSize', 20);
hold on;

% Plot the Semi Circle (C)
theeta = linspace( 0, pi, 100);
R = 20.5;  
x = R*cos(theeta) + 60.50;
y = R*sin(theeta) + 128;
plot(x,y,'y', 'LineWidth',2); 
% Marking the Centroid of the Semi Circle
D = [60.5 136.7049];
plot(D(1) , D(2) , 'y.', 'MarkerSize', 20);
hold on;

% Plot the Triangle (D)
D1 = plot([0 -35.5070], [40 60.5], 'Color', 'r', 'LineWidth',2);
hold on;
D2 = plot([-35.5070 0], [60.5 81], 'Color', 'r', 'LineWidth',2);
hold on;
D3 = plot([0 0], [81 40], 'Color', 'r', 'LineWidth',2);
hold on;
% Marking the Centroid of the triangle
D = [-11.8357 60.5];
plot(D(1) , D(2) , 'r.', 'MarkerSize', 20);
hold on;

% Plot the circle (E)
x = 60.5;
y = 81;
radius = 20.5;
Theeta=0:0.01:2*pi; 
xt=radius*cos(Theeta);
yt=radius*sin(Theeta);
plot(x+xt, y+yt,'m', 'LineWidth',2);
% Marking the Centroid of the circle
E = [60.5 81];
plot(E(1) , E(2) ,'m.', 'MarkerSize', 20);
hold on;

% Plot the big Square (F)
F1 = plot([0 0],[128 0], 'b', 'LineWidth',2);
hold on;
F2 = plot([128 0],[128 128], 'b', 'LineWidth',2);
hold on;
F3 = plot([128 128],[0 128], 'b', 'LineWidth',2);
hold on;
F4 = plot([0 128],[0 0], 'b', 'LineWidth',2);
axis equal;
hold on;
% Marking the Centroid of the Big Square
F = [64 64];
plot(F(1) , F(2) , 'b.', 'MarkerSize', 20);
hold on;

% Animation
% From A to C
A=[67.5;-20.5]; 
A1=[41.6056;73.047];
for lambda=0:0.05:1  
    x=(1-lambda)*A+ lambda*A1;
    %plot(x(1,1), x(2,1), 'g.', 'MarkerSize', 14) 
    pause(0.05); 
    hold on
    % Command taken for equal distribution of points in x and y
    axis('equal') 
    plot([0,200],[0,0],'k') % plot line from(0,0) to (200,0)
    plot([0,0],[0,150],'k') % plot line from (0,0) to (0,150)
    drawnow 
end
ThetaArray = linspace((((360-156.42)*pi)/180),(159.46*pi)/180,180);
LengthOfThetaArray = length(ThetaArray);
r = 20.5;
%For moving outside the circle
for index = 1:1:LengthOfThetaArray
    theta = ThetaArray(index);
    x = 60.5+r*cos(theta);
    y = 81+r*sin(theta);
    %plot(x, y, 'g.','MarkerSize', 12);
    drawnow;
    pause(0);
end
A2=[41.3991;88.4435];
C=[60.5;136.705];  
for lambda=0:0.05:1  
    x=(1-lambda)*A2+ lambda*C;
    %plot(x(1,1), x(2,1), 'g.', 'MarkerSize',14)  
    pause(0.05); 
    hold on
    % Command taken for equal distribution of points in x and y
    axis('equal') 
    plot([0,200],[0,0],'k') % plot line from(0,0) to (200,0)
    plot([0,0],[0,150],'k') % plot line from (0,0) to (0,150)
    drawnow 
end

% From C to B
C=[60.5;136.705]; 
B=[145.41;64.4098];   
for lambda=0:0.05:1 
    x=(1-lambda)*C+ lambda*B;
    %plot(x(1,1), x(2,1), 'y.', 'MarkerSize', 14)  
    pause(0.05);
    hold on
    % Command taken for equal distribution of points in x and y
    axis('equal')
    plot([0,200],[0,0],'k') % plot line from(0,0) to (200,0)
    plot([0,0],[0,150],'k') % plot line from (0,0) to (0,150)
    drawnow 
end

% From B to D
B=[145.41;64.4098]; 
B1=[66.8361;59.5108];   
for lambda=0:0.05:1 
    x=(1-lambda)*B+ lambda*B1;
    %plot(x(1,1), x(2,1), 'k.', 'MarkerSize', 14)  
    pause(0.05);
    hold on
    % Command taken for equal distribution of points in x and y
    axis('equal') 
    plot([0,200],[0,0],'k') % plot line from(0,0) to (200,0)
    plot([0,0],[0,150],'k') % plot line from (0,0) to (0,150)
    drawnow 
end
B1=[66.8361;59.5108]; 
D=[-11.8357;60.5];  
for lambda=0:0.05:1  
    x=(1-lambda)*B1+ lambda*D;
    %plot(x(1,1), x(2,1), 'k.', 'MarkerSize', 14) 
    pause(0.05); 
    hold on
    % Command taken for equal distribution of points in x and y
    axis('equal') 
    plot([0,200],[0,0],'k') % plot line from(0,0) to (200,0)
    plot([0,0],[0,150],'k') % plot line from (0,0) to (0,150)
    drawnow 
end

% From D to A
D=[-11.8357;60.5]; 
A=[67.5;-20.5];  
for lambda=0:0.05:1  
    x=(1-lambda)*D+ lambda*A;
    plot(x(1,1), x(2,1), 'r.', 'MarkerSize', 14)  
    pause(0.05); 
    hold on
    % Command taken for equal distribution of points in x and y
    axis('equal') 
    plot([0,200],[0,0],'k') % plot line from(0,0) to (200,0)
    plot([0,0],[0,150],'k') % plot line from (0,0) to (0,150)
    drawnow 
end