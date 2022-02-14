%Clear Command Window
clc; 
%Clears Workspace
clear all; 
% Centroid of individual figures wrt Centroid of Composite figure
A = [-2.1495 -81.0028];
B = [75.7514 3.8981];
C = [9.1495 76.1977];
D = [-81.4852 -0.0028];

% X2-X1
AB_x = [B([1])- A([1])];
BC_x = [C([1])- B([1])];
CD_x = [D([1])- C([1])];
DA_x = [A([1])- D([1])];
% Y2-Y1
AB_y = [B([2])- A([2])];
BC_y = [C([2])- B([2])];
CD_y = [D([2])- C([2])];
DA_y = [A([2])- D([2])];

% Magnitude (slope, y2-y1/x2-x1)
Magnitude_AB = abs(AB_y/AB_x);
Magnitude_BC = abs(BC_y/BC_x);
Magnitude_CD = abs(CD_y/CD_x);
Magnitude_DA = abs(DA_y/DA_x);

% Angles tan(theta) = ..... , theta = tanInverse(.....)
ThetaAB = atand(Magnitude_AB);
ThetaBC = atand(Magnitude_BC);
ThetaCD = atand(Magnitude_CD);
ThetaDA = atand(Magnitude_DA);

% Angles wrt +ve x-axis
Theta_AB = ThetaAB;
Theta_BC = 180 - ThetaBC;
Theta_CD = 180 + ThetaCD;
Theta_DA = 360 - ThetaDA;

x1 = abs(Magnitude_AB*cosd(Theta_AB)); y1 = abs(Magnitude_AB*sind(Theta_AB));
x2 = abs(Magnitude_BC*cosd(Theta_BC)); y2 = abs(Magnitude_BC*sind(Theta_BC));
x3 = abs(Magnitude_CD*cosd(Theta_CD)); y3 = abs(Magnitude_CD*sind(Theta_CD));
x4 = abs(Magnitude_DA*cosd(Theta_DA)); y4 = abs(Magnitude_DA*sind(Theta_DA));

% Individual forces
F_AB = [x1 y1];
F_BC = [x2 y2];
F_CD = [x3 y3];
F_DA = [x4 y4];

% Resultant force acting on the composite area 
F = F_AB + F_BC + F_CD + F_DA;
