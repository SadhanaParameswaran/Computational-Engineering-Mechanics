clc;clear all;clf;

% Let us plot all the figures
%Shape A: Small square with side 52 units
%Centroid of A
Ac=[111 190];
plot(Ac(1), Ac(2),'b.','MarkerSize',18);
hold on;
%Shape A plot
x_ofA=[85 85 137 137 85];
y_ofA=[164 216 216 164 164];
plot(x_ofA,y_ofA,'b');
hold on;

%Shape B: Quarter circle with radius 52
r_B=52;
Center_B_circle=[52, 111];
angle_B= 180:1:270;
%Centroid of B
Bc=[29.93 88.93];
plot(Bc(1), Bc(2),'g.','MarkerSize',18);
hold on;
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
angle_C= 180:1:360;
%Centroid of C
Cc=[131 14.96];
plot(Cc(1), Cc(2),'m.','MarkerSize',18);
hold on;
%Shape C plot
x_ofC = Center_C_circle(1)+r_C*cosd(angle_C) ; 
y_ofC = Center_C_circle(2)+r_C*sind(angle_C) ;
plot(x_ofC ,y_ofC,'m');
plot([105 157], [26 26],'m');
hold on;


%Shape D: Triangle with base 52 and height 45.03
%Centroid of D
Dc=[205.01 105];
plot(Dc(1), Dc(2),'r.','MarkerSize',18);
hold on;
%Shape D plot
x_ofD=[190 235.03 190 190];
y_ofD=[131 105 79 131];
plot(x_ofD,y_ofD,'r');
hold on;


%Shape E: Main square with side 138 units
%Centroid of E
Ec=[121 95];
plot(Ec(1), Ec(2),'y.','MarkerSize',18);
hold on;
%Shape E plot
x_ofE=[52 52 190 190 52];
y_ofE=[26 164 164 26 26];
plot(x_ofE,y_ofE,'y');
hold on;

%Shape F: Circle cut out with radius 26.5
r_F=26.5;
Center_F_circle=[131,111];
angle_F= 0:1:360;
%Centroid of F
Fc=[131 111];
plot(Fc(1), Fc(2),'c.','MarkerSize',18);
hold on;
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

%Now we plot centroid G of composite area
Gc=[115.4128,100.6663];
plot(Gc(1), Gc(2),'r*','MarkerSize',12);
hold on;


%Now we animate the route
%A-->C-->B-->D-->A

%for A-->C
Ac=[111 190];
A_mid=[104.594 113.220];
C_mid=[106.26 101.503];
Cc=[131 14.96];
for lamda=0:0.05:1
x=(1-lamda)*Ac+lamda*A_mid;
plot(x(1,1),x(1,2),'b.', 'MarkerSize', 12) % plots one point
pause(0.05);
hold on
axis('equal') % command to take equal distribution of points in X and Y axis
drawnow
end
%Distance A to A_mid
Dist_AtoA_mid=sqrt((((A_mid(1)-Ac(1))^2)+((A_mid(2)-Ac(2))^2)));

A_mid_angle=172;
C_mid_angle=202;
AngleAC=C_mid_angle-A_mid_angle;
ThetaArray = linspace((A_mid_angle*pi)/180,(C_mid_angle*pi)/180,180);
LengthOfThetaArray = length(ThetaArray);
r_F=26.5;
%For moving outside the circle
for index = 1:1:LengthOfThetaArray
    theta = ThetaArray(index);
    x = Fc(1)+r_F*cos(theta);
    y = Fc(2)+r_F*sin(theta);
    plot(x, y, 'b.','MarkerSize', 12);
    drawnow;
    pause(0);
end
%Distance A_mid to C_mid
Dist_A_midtoC_mid=r_F*((AngleAC*pi)/180);

for lamda=0:0.05:1
x=(1-lamda)*C_mid+lamda*Cc;
plot(x(1,1),x(1,2),'b.', 'MarkerSize', 12) % plots one point
pause(0.05);
hold on
axis('equal') % command to take equal distribution of points in X and Y axis
drawnow
end
%Distance C_mid to C
Dist_C_midtoC=sqrt((((Cc(1)-C_mid(1))^2)+((Cc(2)-C_mid(2))^2)));


%for C-->B
Cc=[131 14.96];
Bc=[29.93 88.93];
for lamda=0:0.05:1
x=(1-lamda)*Cc+lamda*Bc;
plot(x(1,1),x(1,2),'m.', 'MarkerSize', 12) % plots one point
pause(0.05);
hold on
axis('equal') % command to take equal distribution of points in X and Y axis
drawnow
end
%Distance C to B
Dist_CtoB=sqrt((((Bc(1)-Cc(1))^2)+((Bc(2)-Cc(2))^2)));


%for B-->D
Bc=[29.93 88.93];
B_mid=[129.613 84.5363];
D_mid=[139.628 85.9438];
Dc=[205.01 105];
for lamda=0:0.05:1
x=(1-lamda)*Bc+lamda*B_mid;
plot(x(1,1),x(1,2),'g.', 'MarkerSize', 12) % plots one point
pause(0.05);
hold on
axis('equal') % command to take equal distribution of points in X and Y axis
drawnow
end
%Distance B to B_mid
Dist_BtoB_mid=sqrt((((B_mid(1)-Bc(1))^2)+((B_mid(2)-Bc(2))^2)));

B_mid_angle=268;
D_mid_angle=290;
AngleBD=D_mid_angle-B_mid_angle;
ThetaArray = linspace((B_mid_angle*pi)/180,(D_mid_angle*pi)/180,180);
LengthOfThetaArray = length(ThetaArray);
r_F=26.5;
%For moving outside the circle
for index = 1:1:LengthOfThetaArray
    theta = ThetaArray(index);
    x = Fc(1)+r_F*cos(theta);
    y = Fc(2)+r_F*sin(theta);
    plot(x, y, 'g.','MarkerSize', 12);
    drawnow;
    pause(0);
end
%Distance B_mid to D_mid
Dist_B_midtoD_mid=r_F*((AngleBD*pi)/180);


for lamda=0:0.05:1
x=(1-lamda)*D_mid+lamda*Dc;
plot(x(1,1),x(1,2),'g.', 'MarkerSize', 12) % plots one point
pause(0.05);
hold on
axis('equal') % command to take equal distribution of points in X and Y axis
drawnow
end
%Distance D_mid to D
Dist_D_midtoD=sqrt((((Dc(1)-D_mid(1))^2)+((Dc(2)-D_mid(2))^2)));

%for D-->A
Dc=[205.01 105];
Ac=[111 190];
for lamda=0:0.05:1
x=(1-lamda)*Dc+lamda*Ac;
plot(x(1,1),x(1,2),'r.', 'MarkerSize', 12) % plots one point
pause(0.05);
hold on
axis('equal') % command to take equal distribution of points in X and Y axis
drawnow
end
%Distance D to A
Dist_DtoA=sqrt((((Dc(1)-Ac(1))^2)+((Dc(2)-Ac(2))^2)));

%Total distance
Distance=Dist_AtoA_mid+Dist_A_midtoC_mid+Dist_C_midtoC+Dist_CtoB+....
    Dist_BtoB_mid+Dist_B_midtoD_mid+Dist_D_midtoD+Dist_DtoA;
