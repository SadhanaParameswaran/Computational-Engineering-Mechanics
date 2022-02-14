clc;
clear all;
clf;
% Let us plot all the figures

%Shape A: Small square with side 52 units
%Shape A plot
x_ofA=[85 85 137 137 85];
y_ofA=[164 216 216 164 164];
plot(x_ofA,y_ofA,'b');
hold on;


%Shape B: Quarter circle with radius 52
r_B=52;
Center_B_circle=[52, 111];
angle_B= 270:-1:180
%Shape B plot
x_ofB = Center_B_circle(1)+r_B*cosd(angle_B) ; 
y_ofB = Center_B_circle(2)+r_B*sind(angle_B) ;
plot(x_ofB ,y_ofB,'g');
plot([0 52], [111 111], 'g');
plot([52 52], [111 59], 'g');
hold on;


%Shape C: Semicircle with radius 26
r_C=26;
Center_C_circle=[131,26];
angle_C= 360:-1:180
%Shape C plot
x_ofC = Center_C_circle(1)+r_C*cosd(angle_C) ; 
y_ofC = Center_C_circle(2)+r_C*sind(angle_C) ;
plot(x_ofC ,y_ofC,'m');
plot([105 157], [26 26],'m');
hold on;


%Shape D: Triangle with base 52 and height 45.03
%Shape D plot
x_ofD=[190 235.03 190 190];
y_ofD=[131 105 79 131];
plot(x_ofD,y_ofD,'r');


%Shape E: Main square with side 138 units
%Shape E plot
x_ofE=[52 52 190 190 52];
y_ofE=[26 164 164 26 26];
plot(x_ofE,y_ofE,'y');
hold on;


%Shape F: Circle cut out with radius 26.5
r_F=26.5;
Center_F_circle=[131,111];
angle_F= 360:-1:0
%Shape F plot
x_ofF = Center_F_circle(1)+r_F*cosd(angle_F) ; 
y_ofF = Center_F_circle(2)+r_F*sind(angle_F) ;
plot(x_ofF ,y_ofF, 'c');
hold on;


%Now let us draw the x and y axis
plot([-10 300] , [0 0] , 'k--');
hold on;
plot([0 0] , [-10 300] , 'k--');
hold on;
axis equal;
