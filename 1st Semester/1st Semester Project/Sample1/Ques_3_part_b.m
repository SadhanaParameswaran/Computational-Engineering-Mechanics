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
F_AB = [x1 y1 0];
F_BC = [x2 y2 0];
F_CD = [x3 y3 0];
F_DA = [x4 y4 0];

% Resultant force acting on the composite area 
F = F_AB + F_BC + F_CD + F_DA;

% Centroid of individual figures wrt initial (0,0)
A = [67.5 -20.5 0];
B = [145.40984 64.4098 0];
C = [60.5 136.7049 0];
D = [-11.8357 60.5 0];

% Centroid of composite figure
G = [65.94178259 60.66547279 0];

% X2-X1
GA_x = [A([2])- G([2])];
GB_x = [B([2])- G([2])];
GC_x = [C([2])- G([2])];
GD_x = [D([2])- G([2])];
% Y2-Y1
GA_y = [A([1])- G([1])];
GB_y = [B([1])- G([1])];
GC_y = [C([1])- G([1])];
GD_y = [D([1])- G([1])];

GA = [GA_x GA_y 0];
GB = [GB_x GB_y 0];
GC = [GC_x GC_y 0];
GD = [GD_x GD_y 0];

% Individual Moments
M_A = cross(GA , F_AB)
M_B = cross(GB , F_BC)
M_C = cross(GC , F_CD)
M_D = cross(GD , F_DA)

% Resultant moment acting on the composite area about the centroid(G)
M = M_A + M_B + M_C + M_D
