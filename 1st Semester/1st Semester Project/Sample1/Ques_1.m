%Clear Command Window
clc; 
%Clears Workspace
clear all; 
%Clears Figure Window
clf; 

% For the small Square (A)
X_SmallSquare = 47+20.5;
Y_SmallSquare = -20.5;
A_SmallSquare = 41*41;
XA_AA = X_SmallSquare*A_SmallSquare;
YA_AA = Y_SmallSquare*A_SmallSquare;

%For the Quarter Circle (B)
B_Radius = 41;
X_QuarterCircle = 47+41+40+(4*B_Radius)/(3*pi);
Y_QuarterCircle = 47+(4*B_Radius)/(3*pi);
A_QuarterCircle = ((pi)*(B_Radius)*(B_Radius))/4;
XB_AB = X_QuarterCircle*A_QuarterCircle;
YB_AB = Y_QuarterCircle*A_QuarterCircle;

%For the Semi Circle (C)
C_Radius = 20.5;
X_SemiCircle = 40+20.5;
Y_SemiCircle = 40+41+47+(4*C_Radius)/(3*pi);
A_SemiCircle = ((pi)*(C_Radius)*(C_Radius))/2;
XC_AC = X_SemiCircle*A_SemiCircle;
YC_AC = Y_SemiCircle*A_SemiCircle;

%For the Triangle (D)
X_Triangle = -11.8357;
Y_Triangle = 40+20.5;
A_Triangle = (0.5)*(47)*(35.5070);
XD_AD = X_Triangle*A_Triangle;
YD_AD = Y_Triangle*A_Triangle;

%For the Circle (E)
E_Radius = 20.5;
X_Circle = 40+20.5;
Y_Circle = 41+40;
A_Circle = (pi)*(E_Radius)*(E_Radius);
XE_AE = X_Circle*A_Circle;
YE_AE = Y_Circle*A_Circle;

% For the big Square (F)
X_BigSquare = 128/2;
Y_BigSquare = 128/2;
A_BigSquare = 128*128;
XF_AF = X_BigSquare*A_BigSquare;
YF_AF = Y_BigSquare*A_BigSquare;

%Finding the sum of the Areas, XiAi and YiAi
Sigma_A = A_SmallSquare + A_QuarterCircle + A_SemiCircle - A_Circle + A_BigSquare;
Sigma_X = XA_AA + XB_AB + XC_AC + XD_AD - XE_AE + XF_AF;
Sigma_Y = YA_AA + YB_AB + YC_AC + YD_AD - YE_AE + YF_AF;

%X Coordinate
X = Sigma_X/Sigma_A;

%Y Coordinate
Y = Sigma_Y/Sigma_A;

%Centroid of the figure
Centroid = [X Y]

%Table
A = [  X_SmallSquare  ,   Y_SmallSquare ,   A_SmallSquare , XA_AA , YA_AA ];
B = [ X_QuarterCircle , Y_QuarterCircle , A_QuarterCircle , XB_AB , YB_AB ];
C = [   X_SemiCircle  ,   Y_SemiCircle  ,   A_SemiCircle  , XC_AC , YC_AC ];
D = [    X_Triangle   ,    Y_Triangle   ,    A_Triangle   , XD_AD , YD_AD ];
E = [      X_Circle   ,     Y_Circle    ,     A_Circle    , XE_AE , YE_AE ];
F = [   X_BigSquare   ,   Y_BigSquare   ,    A_BigSquare  , XF_AF , YF_AF ];
format long;
Table = [ A ; B ; C ; D ; E ; F ]
