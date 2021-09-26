% example
tspan = [0 4]; %Interval of integration, specified as a vector.
y0 = 1; % initial condition
[t,y] = ode15s(@(t,y) -10*t, tspan, y0);
plot(t,y,'-o')

% assignment problem

dydt = @(t,y) [-3*y(1) + 30*y(2); 5*y(1) - 300*y(2) ];

%sub plot
subplot(2,2,1)
tic, ode15s(dydt, [0 20], [16 -16]), toc
title('ode15s')

subplot(2,2,2)
tic, ode45(dydt, [0 20], [16 -16]), toc
title('ode45')

% two functions in one plot
dydt = @(t,y) [10*exp(-(t-2)*(t-2)/(2*.075^2))-.6*y];
tic, ode45(@dydt,[0 4],0.5), toc
hold on
tic, ode23(@dydt,[0 4],1), toc
hold on
tic, ode15s(@dydt,[0 4],2), toc


% 4.1
dydt = @(t,y) [131*x-931*y ];
tic, ode15s(@dydt,[0 20],6), toc
hold on
% 4.2
dydt = @(t,y) [133*x-933*y ];
tic, ode15s(@dydt,[0 20],-6), toc

A= [131 -931;133 -933]
eig(A)


