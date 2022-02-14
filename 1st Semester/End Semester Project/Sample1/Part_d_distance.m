%Clear Command Window
clc; 
%Clears Workspace
clear all; 

% From A to C
A=[67.5;-20.5]; 
A1=[41.6056;73.047];
A2=[41.3991;88.4435];
C=[60.5;136.705];

% From C to B
C=[60.5;136.705]; 
B=[145.41;64.4098];

% From B to D
B=[145.41;64.4098]; 
B1=[66.8361;59.5108];   
D=[-11.8357;60.5];  

% From D to A
D=[-11.8357;60.5]; 
A=[67.5;-20.5];

%Distance from A to C
d1 = norm(A-A1);
d2 = norm(A1-A2);
d3 = norm(A2-C);
D1 = d1+d2+d3

%Distance from C to B
D2 = norm(C-B)

%Distance from B to D
d4 = norm(B-B1);
d5 = norm(B1-D);
D3 = d4+d5

%Distance from D to A
D4 = norm(D-A)

Distance_travelled_by_particle = D1+D2+D3+D4
