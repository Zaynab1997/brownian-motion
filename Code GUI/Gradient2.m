function [grad2x,grad2y,grad2z] = Gradient2(x,x1,grad,r1,r2 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
a=(x1(2)-x(2))*grad(1)-(x1(3)-x(3))*grad(2);
b=(x1(3)-x(3))*grad(1)-(x1(1)-x(1))*grad(3);
c=(x1(1)-x(1))*grad(2)-(x1(2)-x(2))*grad(1);
xm=(x1-x).*(r2/r1);
d=-a*xm(1)-b*xm(2)-c*xm(3);
mod=sqrt(3*3-(r1+r2)*(r1+r2));
syms xn
syms yn
syms zn
[solvx,solvy,solvz]=solve(a*xn+b*yn+c*zn+d==0,(xm(1)-xn)^2+(xm(2)-yn)^2+(xm(3)-zn)^2==mod*mod,(xm(1)-xn)*(x1(1)-x(1))+(xm(2)-yn)*(x1(2)-x(2))+(xm(3)-zn)*(x1(3)-x(3))==0,[xn,yn,zn]);
grad2x=sign(xm(1)-solvx(1));
grad2y=sign(xm(2)-solvy(1));
grad2z=sign(xm(3)-solvz(1));
% grad2=transpose(grad2);
end


