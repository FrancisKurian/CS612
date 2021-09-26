function [e_val,e_vec] = power_fun(A)
    error = 0.00001 ;
    no_itr = 50; 
    x0=ones(size(A));
    x0=x0(:,1); 
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