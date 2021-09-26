%A = [1 2 2;2 0 3;2 3 0]
A = [2 1 ;1 2]
M=A
[Q,R]=qr(M)
fprintf('verify that A= Q*R\n')
Q*R
for i= 1 : 20
[Q,R]=qr(M);
M=R*Q;
end

fprintf(' Print M after 100 iterations \n')
M

fprintf('Eigen Values using eig(A) \n')
eig(A)
