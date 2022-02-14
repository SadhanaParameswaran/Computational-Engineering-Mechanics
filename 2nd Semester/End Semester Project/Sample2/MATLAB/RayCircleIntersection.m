function [pointIntersectionA, pointIntersectionB] = RayCircleIntersection(lineStart, lineEnd, circleCenter, r)
%unitvect=(C-A')/norm(C-A')

wL=(lineEnd-lineStart)/(norm(lineEnd-lineStart));

rad=r;

xL=lineStart(1); yL=lineStart(2);
xC=circleCenter(1); yC=circleCenter(2);

fL=wL(1); gL=wL(2);

A=((fL)^2)+((gL)^2);
B=(2*(fL)*(xL-xC))+(2*(gL)*(yL-yC));
C=(((xL-xC)^2)+((yL-yC)^2)-(rad^2));


delta=((B^2)-(4*A*C));


texp1=((-B)/(2*A));
texp2=((sqrt(delta))/(2*A));

tA=texp1-texp2;
tB=texp1+texp2;


pointIntersectionA=lineStart+tA*wL;
pointIntersectionB=lineStart+tB*wL;



% for tA=-10:1:10
%     p1=pL+tA*wL;
%     xPA=p1(1); yPA=p1(2);
%     plot(xPA, yPA, 'r*');
%     hold on
% end
% 
% 
% thetaC=linspace(0,2*pi,100);
% x1=c(1)+(rad*cos(thetaC));
% y1=c(2)+(rad*sin(thetaC));
% plot(x1,y1)
% hold on;
% % for tB=-10:1:10
% %     p2=C+r*wC;
% %     xPB=p2(1); yPB=p2(2);
% %     plot(xPB, yPB, 'y*');
% %     hold on
% % end
% 
% 
% 
% hold on
% plot(PA(1),PA(2),'bo');
% plot(PB(1),PB(2),'co');
