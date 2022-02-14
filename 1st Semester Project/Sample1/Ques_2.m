%Clear Command Window
clc; 
%Clears Workspace
clear all; 
%Clears Figure Window
clf; 

% For the small Square (A)
A_SmallSquare = 41*41;
Side_of_SmallSquare = 41;
dx_A = -2.1495;
dy_A = -81.0028;
Iu_A = (1/12)*(Side_of_SmallSquare)^4;
Iv_A = (1/12)*(Side_of_SmallSquare)^4;
Area_A_dy = A_SmallSquare*(dy_A)^2;
Area_A_dx = A_SmallSquare*(dx_A)^2;
Ix_A = Iu_A + Area_A_dy;
Iy_A = Iv_A + Area_A_dx;

%For the Quarter Circle (B)
B_Radius = 41;
A_QuarterCircle = ((pi)*(B_Radius)*(B_Radius))/4;
dx_B = 75.7514;
dy_B = 3.8981;
Iu_B = (0.05488)*(B_Radius)^4;
Iv_B = (0.05488)*(B_Radius)^4;
Area_B_dy = A_QuarterCircle*(dy_B)^2;
Area_B_dx = A_QuarterCircle*(dx_B)^2;
Ix_B = Iu_B + Area_B_dy;
Iy_B = Iv_B + Area_B_dx;


%For the Semi Circle (C)
C_Radius = 20.5;
A_SemiCircle = ((pi)*(C_Radius)*(C_Radius))/2;
dx_C = 9.1495;
dy_C = 76.1977;
Iu_C = (0.1098)*(C_Radius)^4;
Iv_C = (0.1098)*(C_Radius)^4;
Area_C_dy = A_SemiCircle*(dy_C)^2;
Area_C_dx = A_SemiCircle*(dx_C)^2;
Ix_C = Iu_C + Area_C_dy;
Iy_C = Iv_C + Area_C_dx;

%For the Triangle (D)
b = 41;
h = 35.5070;
a = 20.5;
A_Triangle = (0.5)*(47)*(35.5070);
dx_D = -81.4852;
dy_D = -0.0028;
Iu_D = (1/36)*(b)*(h^3);
Iv_D = (1/36)*((h)*(b^3)-(h)*(a)*(b^2)+(h)*(a^2)*(b));
Area_D_dy = A_Triangle*(dy_D)^2;
Area_D_dx = A_Triangle*(dx_D)^2;
Ix_D = Iu_D + Area_D_dy;
Iy_D = Iv_D + Area_D_dx;

%For the Circle (E)
E_Radius = 20.5;
A_Circle = (pi)*(E_Radius)*(E_Radius);
dx_E = -9.1495;
dy_E = 20.4972;
Iu_E = ((pi)*(E_Radius)^4)/4;
Iv_E = ((pi)*(E_Radius)^4)/4;
Area_E_dy = A_Circle*(dy_E)^2;
Area_E_dx = A_Circle*(dx_E)^2;
Ix_E = Iu_E + Area_E_dy;
Iy_E = Iv_E + Area_E_dx;

% For the big Square (F)
Side_of_BigSquare = 128;
A_BigSquare = 128*128;
dx_F = -5.6495;
dy_F = 3.4972;
Iu_F = (1/12)*(Side_of_BigSquare)^4;
Iv_F = (1/12)*(Side_of_BigSquare)^4;
Area_F_dy = A_BigSquare*(dy_F)^2;
Area_F_dx = A_BigSquare*(dx_F)^2;
Ix_F = Iu_F + Area_F_dy;
Iy_F = Iv_F + Area_F_dx;

%Finding the sum of the Moments
Ix = Ix_A + Ix_B + Ix_C + Ix_D - Ix_E + Ix_F;
Iy = Iy_A + Iy_B + Iy_C + Iy_D - Iy_E + Iy_F;

%Moment 
Moment_of_Inertia = [Ix Iy]
