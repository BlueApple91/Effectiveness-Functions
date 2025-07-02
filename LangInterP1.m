function y = LangInterP1(x,xs,ys)
% x, scala
% xs, vector, independent variable 
% ys, vector, 1D function
n=length(xs);
i=Indx(x,sort([x,xs]));
if i>=4 && i<=n-2    % 6
    xsi=[xs(i-3:i-1),xs(i:i+2)];
    ysi=[ys(i-3:i-1),ys(i:i+2)];
    y1=(x-xsi(2))*(x-xsi(3))*(x-xsi(4))*(x-xsi(5))*(x-xsi(6))/((xsi(1)-xsi(2))*(xsi(1)-xsi(3))*(xsi(1)-xsi(4))*(xsi(1)-xsi(5))*(xsi(1)-xsi(6)))*ysi(1);
    y2=(x-xsi(1))*(x-xsi(3))*(x-xsi(4))*(x-xsi(5))*(x-xsi(6))/((xsi(2)-xsi(1))*(xsi(2)-xsi(3))*(xsi(2)-xsi(4))*(xsi(2)-xsi(5))*(xsi(2)-xsi(6)))*ysi(2);
    y3=(x-xsi(1))*(x-xsi(2))*(x-xsi(4))*(x-xsi(5))*(x-xsi(6))/((xsi(3)-xsi(1))*(xsi(3)-xsi(2))*(xsi(3)-xsi(4))*(xsi(3)-xsi(5))*(xsi(3)-xsi(6)))*ysi(3);
    y4=(x-xsi(1))*(x-xsi(2))*(x-xsi(3))*(x-xsi(5))*(x-xsi(6))/((xsi(4)-xsi(1))*(xsi(4)-xsi(2))*(xsi(4)-xsi(3))*(xsi(4)-xsi(5))*(xsi(4)-xsi(6)))*ysi(4);
    y5=(x-xsi(1))*(x-xsi(2))*(x-xsi(3))*(x-xsi(4))*(x-xsi(6))/((xsi(5)-xsi(1))*(xsi(5)-xsi(2))*(xsi(5)-xsi(3))*(xsi(5)-xsi(4))*(xsi(5)-xsi(6)))*ysi(5);
    y6=(x-xsi(1))*(x-xsi(2))*(x-xsi(3))*(x-xsi(4))*(x-xsi(5))/((xsi(6)-xsi(1))*(xsi(6)-xsi(2))*(xsi(6)-xsi(3))*(xsi(6)-xsi(4))*(xsi(6)-xsi(5)))*ysi(6);
    y=y1+y2+y3+y4+y5+y6;
elseif i==3                 % 4
    xsi=xs(1:4);
    ysi=ys(1:4);
    y1=(x-xsi(2))*(x-xsi(3))*(x-xsi(4))/((xsi(1)-xsi(2))*(xsi(1)-xsi(3))*(xsi(1)-xsi(4)))*ysi(1);
    y2=(x-xsi(1))*(x-xsi(3))*(x-xsi(4))/((xsi(2)-xsi(1))*(xsi(2)-xsi(3))*(xsi(2)-xsi(4)))*ysi(2);
    y3=(x-xsi(1))*(x-xsi(2))*(x-xsi(4))/((xsi(3)-xsi(1))*(xsi(3)-xsi(2))*(xsi(3)-xsi(4)))*ysi(3);
    y4=(x-xsi(1))*(x-xsi(2))*(x-xsi(3))/((xsi(4)-xsi(1))*(xsi(4)-xsi(2))*(xsi(4)-xsi(3)))*ysi(4);
    y=y1+y2+y3+y4;
elseif i==1 || i==2  % doðrusal
    y=(ys(2)-ys(1))/(xs(2)-xs(1))*(x-xs(1))+ys(1);
elseif i==n-1   % 4
    xsi=xs(end-3:end);
    ysi=ys(end-3:end);
    y1=(x-xsi(2))*(x-xsi(3))*(x-xsi(4))/((xsi(1)-xsi(2))*(xsi(1)-xsi(3))*(xsi(1)-xsi(4)))*ysi(1);
    y2=(x-xsi(1))*(x-xsi(3))*(x-xsi(4))/((xsi(2)-xsi(1))*(xsi(2)-xsi(3))*(xsi(2)-xsi(4)))*ysi(2);
    y3=(x-xsi(1))*(x-xsi(2))*(x-xsi(4))/((xsi(3)-xsi(1))*(xsi(3)-xsi(2))*(xsi(3)-xsi(4)))*ysi(3);
    y4=(x-xsi(1))*(x-xsi(2))*(x-xsi(3))/((xsi(4)-xsi(1))*(xsi(4)-xsi(2))*(xsi(4)-xsi(3)))*ysi(4);
    y=y1+y2+y3+y4; 
elseif i==n || i==n+1 % Linear
    y=(ys(end)-ys(end-1))/(xs(end)-xs(end-1))*(x-xs(end-1))+ys(end-1);   
end
end