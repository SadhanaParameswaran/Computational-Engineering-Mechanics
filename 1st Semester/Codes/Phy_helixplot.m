clc; clear all; clf;
r=10;
pitch=10;
thetaArray=linspace(0,6*pi,90);
xArray=r*cos(thetaArray);
yArray=r*sin(thetaArray);
zArray=thetaArray;

figure(1)
plot3(xArray, yArray, zArray);