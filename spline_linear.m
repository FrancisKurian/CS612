% Part B : 20 interior points -2-D interpolation in coarse resolution 
[x,y]=meshgrid(linspace(-2,0,20),linspace(0,3,20));
%[x,y]=meshgrid(linspace(-2,0,100),linspace(0,3,100));
T=2 + x - y + 2.*x.^2 + 2.*x.*y + y.^2;
surfc(x,y,T);
hold on

T1=interp2(x,y,T,-1.63,1.627,'linear')
T2=interp2(x,y,T,-1.63,1.627,'spline')

% Determine the Relative Error
x=-1.63;
y=1.627;
T=2 + x - y + 2.*x.^2 + 2.*x.*y + y.^2
E1= (T1-T)/T*100
E2= (T2-T)/T*100
%Employ Linspace function with 9 interior points
%plot3(-1.63,1.627,T1,'-o','MarkerSize',15,'MarkerEdgeColor','red','MarkerFaceColor',[1 .6 .6])
plot3(-1.63,1.627,T2,'-o','MarkerSize',15,'MarkerEdgeColor','red','MarkerFaceColor',[1 .6 .6])

% 100 interior points 2-D interpolation in fine resolution
[x,y]=meshgrid(linspace(-2,0,100),linspace(0,3,100));
T=2 + x - y + 2.*x.^2 + 2.*x.*y + y.^2;
surfc(x,y,T);
hold on

T1=interp2(x,y,T,-1.63,1.627,'linear')
T2=interp2(x,y,T,-1.63,1.627,'spline')

% Determine the Relative Error
x=-1.63;
y=1.627;
T=2 + x - y + 2.*x.^2 + 2.*x.*y + y.^2
E1= (T1-T)/T*100
E2= (T2-T)/T*100

%Employ Linspace function with 9 interior points
%plot3(-1.63,1.627,T1,'-o','MarkerSize',15,'MarkerEdgeColor','red','MarkerFaceColor',[1 .6 .6])
plot3(-1.63,1.627,T2,'-o','MarkerSize',15,'MarkerEdgeColor','red','MarkerFaceColor',[1 .6 .6])
