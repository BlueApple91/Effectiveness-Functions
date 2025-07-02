function z = LangInterP2(x,y,xs,ys,Z)
% x, scala
% y, scala
% xs, vect||, independent variable [j]
% ys, vect||, independent variable [i]
% Z, matrix, (2D) surface function [i,j]
ny=length(ys);
j=Indx(y,sort([y,ys]));
if j>=4 && j<=ny-2 % 6
    z1 = LangInterP1(x,xs,Z(j-3,:));
    z2 = LangInterP1(x,xs,Z(j-2,:));
    z3 = LangInterP1(x,xs,Z(j-1,:));
    z4 = LangInterP1(x,xs,Z(j,:));
    z5 = LangInterP1(x,xs,Z(j+1,:));
    z6 = LangInterP1(x,xs,Z(j+2,:));
    z=LangInterP1(y,ys(j-3:j+2),[z1,z2,z3,z4,z5,z6]);
elseif j==3  % 4
    z1=LangInterP1(x,xs,Z(1,:));
    z2=LangInterP1(x,xs,Z(2,:));
    z3=LangInterP1(x,xs,Z(3,:));
    z4=LangInterP1(x,xs,Z(4,:));
    z=LangInterP1(y,ys(1:4),[z1,z2,z3,z4]);
elseif j==2 || j==1 % linear
    z1=LangInterP1(x,xs,Z(1,:));
    z2=LangInterP1(x,xs,Z(2,:));
    z=(z2-z1)/(ys(2)-ys(1))*(y-ys(1))+z1;    
elseif j==ny-1 % 4
    z1=LangInterP1(x,xs,Z(ny-3,:));
    z2=LangInterP1(x,xs,Z(ny-2,:));
    z3=LangInterP1(x,xs,Z(ny-1,:));
    z4=LangInterP1(x,xs,Z(ny,:));
    z=LangInterP1(y,ys(end-3:end),[z1,z2,z3,z4]);
elseif j==ny || j==ny+1 % linear
    z1=LangInterP1(x,xs,Z(end-1,:));
    z2=LangInterP1(x,xs,Z(end,:));
    z=(z2-z1)/(ys(end)-ys(end-1))*(y-ys(end-1))+z1;
end
end