dydt = @(t,y) [-3*y(1) + 30*y(2); 5*y(1) - 300*y(2) ];
tic;[t,y1]=ode45(dydt,[0 20],[16 -16]);toc

dydt = @(t,y) [-3*y(1) + 30*y(2); 5*y(1) - 300*y(2) ];
tic;[t,y2]=ode15s(dydt,[0 20],[16 -16]);toc

A=[-3 30 ;5 -300];