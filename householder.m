A=[1 0 0;0 1 0;0 0 1;-1 1 0;-1 0 1;0 -1 1];
a=A(:,1)
n=length(a)
alpha=-1*norm(a)
ahat=[alpha;zeros(n-1,1)]
v1=a-ahat
H=eye(n)-2*(v1*v1')/(v1'*v1)
H1A= H*A
a=H1A(:,2)
a(1)=0

alpha=-1*norm(a)
ahat=[0;alpha;zeros(n-2,1)]
v2=a-ahat
H=eye(n)-2*(v2*v2')/(v2'*v2)
H2H1A= H*H1A