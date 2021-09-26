clear
clc
f1= @(x) 0;
f2= @(x) 0;
g1= @(y) 0;
g2= @(y) -y*(y-1);
a=1;
n=5;
itmax=120;
tol=10^-6;
laplace(f1,f2, g1, g2, a, n, itmax, tol)

