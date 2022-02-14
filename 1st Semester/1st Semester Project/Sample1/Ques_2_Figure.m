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

% Plot the Small Square (A)
% x = [x1 x2 x3 x4 x1]
x = [47 88 88 47 47]; 
y = [0 0 -41 -41 0]; 
plot(x,y,'g');
hold on;
% Marking the Centroid of the Small Square
A = [67.5 -20.5];
plot(A(1) , A(2) , 'g.', 'MarkerSize', 20);
hold on;

% Plot the Quarter Circle (B)
R = 41 ; 
B = [128 47] ; 
% angle 
theeta = 90:-1:0 ; 
% points of circle 
xc = B(1)+R*cosd(theeta) ; 
yc = B(2)+R*sind(theeta) ;
%Plot curve of Quarter Circle
plot(xc,yc, 'Color','#522701');
% plot line of Quarter Circle ([x1 x2] , [y1 y2]) 
plot([128 169], [47 47], 'Color','#331900');
hold on;
% Marking the Centroid of the Quarter circle
B = [145.4098 64.4098];
plot(B(1) , B(2) , 'k.', 'MarkerSize', 20);
hold on;

% Plot the Semi Circle (C)
theeta = linspace(0, pi, 100);
R = 20.5;  
x = R*cos(theeta) + 60.50;
y = R*sin(theeta) + 128;
plot(x,y,'Color','#EE771C'); 
% Marking the Centroid of the Semi Circle
D = [60.5 136.7049];
plot(D(1) , D(2) , 'y.', 'MarkerSize', 20);
hold on;

% Plot the Triangle (D)
D1 = plot([0 -35.5070], [40 60.5], 'Color', 'r');
hold on;
D2 = plot([-35.5070 0], [60.5 81], 'Color', 'r');
hold on;
D3 = plot([0 0], [81 40], 'Color', 'r');
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
plot(x+xt, y+yt,'m');
% Marking the Centroid of the circle
E = [60.5 81];
plot(E(1) , E(2) ,'m.', 'MarkerSize', 20);
hold on;

% Plot the big Square (F)
F1 = plot([0 0],[128 0], 'b');
hold on;
F2 = plot([128 0],[128 128], 'b');
hold on;
F3 = plot([128 128],[0 128], 'b');
hold on;
F4 = plot([0 128],[0 0], 'b');
axis equal;
hold on;
% Marking the Centroid of the Big Square
Centroid = [64 64];
plot(Centroid(1) , Centroid(2) , 'b.', 'MarkerSize', 20);
hold on;

% Centroid of the Whole figure
Centroid = [69.6495  60.5028];
plot(Centroid(1) , Centroid(2) ,'c+', 'MarkerSize', 15,'LineWidth',2);
hold on;
