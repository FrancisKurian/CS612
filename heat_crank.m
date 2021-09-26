function heat_crank(f,c1,c2,L,T,h,k,alpha) 
n=L/h; 
m=T/k; 
lambda=alpha^2*k/(h^2); 
z=0:h:L; 
disp('---------------------------------------------------------------------------')  
fprintf('t            x=') 
fprintf('%4.2f      ',z) 
fprintf('\n') 
disp('---------------------------------------------------------------------------')  
fprintf('%4.2f    ',0) 

for i=1:n+1 
    u(i)=feval(f,(i-1)*h); 
    fprintf('%10.6f ',u(i)) 
end

fprintf('\n') 

for i=2:n
    if(i~=n)
        a(i)=-lambda;
    end
    b(i)=2*(1+lambda);
    if (i~=n)
        c(i)=-lambda;
    end
end

bb=b;
for j=1:m
    t=j*k;
    fprintf('%4.2f    ',t) 
    for i=2:n
        d(i)=lambda*u(i-1)+2*(1-lambda)*u(i)+lambda*u(i+1);
    end
    y(n+1)=c1;
    y(1)=c2;
    for i=3:n
        ymult=a(i-1)/bb(i-1);
        bb(i)=bb(i)-ymult*c(i-1);
        d(i)=d(i)-ymult*d(i-1);
    end
    y(n)=d(n)/bb(n);
    for i=n-1:-1:2
        y(i)=(d(i)-c(i)*y(i+1))/bb(i);
    end
    for i=1:n+1
        fprintf('%10.6f ',y(i)) 
    end
    fprintf('\n') 
    u=y;
    bb=b;
end
end


