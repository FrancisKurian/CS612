function dydt = shooting(x,y)
    dydt=[y(2); (2/7)*y(2)+(1/7)*y(1)-(1/7)*x];
end

% shooting method DE liniear extrapolation
%z1=0;
% z2=-1;
% tspan=[0,20];
% [x1,y1]=ode45(@shooting,tspan,[5,z1]);
% [x2,y2]=ode45(@shooting,tspan,[5,z2]);
% z=z1+((z2-z1)/(y2(end,1)-y1(end,1)))*(8-y1(end,1));
% [x,y]=ode45(@shooting,tspan,[5,z]);
% plot(x,y(:,1),'k-')