% [p,pprime] = poly([1 2 2], 3)
function [ p, pprime ] = poly(a,z)
    
    n=length(a);
    b=a(1);
    for k = 2:n
       b=[b (a(k)+z * b(k-1))]; 
    end
    c=b(1);
    for k = 2:n-1
       c=[c (b(k)+z * c(k-1))];
    end
    
    p=b(n);
    pprime=c(n-1);
end

