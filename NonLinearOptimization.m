f1=@(x) x(1).^2 + x(1)* x(2) - 10;
f2=@(x) x(2)+ 3*x(1)*x(2).^2 - 57;
F=@(x) f1(x).^2 + f2(x).^2;
m= fminsearch(F,[1,1]);
x1=m(1);
x2=m(2);
