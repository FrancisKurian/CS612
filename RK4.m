h = 1; 
for k =1:2  % for 2 diff h
y0 = 0.5; T = 4;n = T/h; 
t = 0:h:4;
n = length(t);
y = ones(n);
y(1) = y0;

dydt = @(t,y) [10*exp(-(t-2)*(t-2)/(2*.075^2))-.6*y];
 
for i = 1:n-1
    k1 = dydt(t(i), y(i))';
    k2 = dydt(t(i)+(1/2)*h, y(i) + (1/2)*k1*h)';
    k3 = dydt(t(i)+(1/2)*h, y(i) + (1/2)*k2*h)';
    k4 = dydt(t(i) + h, y(i) + k3*h)';
    y(i+1) = y(i) + (1/6)*(k1+2*k2+2*k3+k4)*h;
end
plot(t,y)
hold on;
 
% reset h for k=2;
 
    h = .2;

end 
%plot ode 23 in the same chart
ode23(@dydt,[0 4],0.5);
legend('Step1','Step.2','ODE 23')