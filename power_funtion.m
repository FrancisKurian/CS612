function [e_val,e_vec] = power_funtion(A,x0,error,no_itr)
    if nargin < 3 , error = 0.00001 ;no_itr = 20;  end
    if nargin < 2 , error = 0.00001 ;no_itr = 20; x0=ones(size(A));x0=x0(:,1); x0; end
    if nargin < 4 , error = 0.00001 ; end
    x1 = A*x0;
    x1 = x1/max(x1);
    norm1 =norm(x1-x0);
    i = 0;
    while norm1 > 0.01
        x2 = A*x1;
        x2 = x2/max(real(x2));
        norm1 = norm(x1-x2);
        x1 = x2;
        i = i + 1;
        if no_itr > i && norm1 < error , break , end
    end
    e_vec = x1;
    e_val = ((A*x1)'*x1)/(x1'*x1);
    
end

% Function named Power_method_dominant_eig() given below.
A = [2 1 -1 3; 1 7 0 -1 ;-1 0 4 -2; 3 -1 -2 1]
% eigen values are.
fprintf('The function runs from here.')
[EVAL,EVEC]=Power_method_dominant_eig2(A)