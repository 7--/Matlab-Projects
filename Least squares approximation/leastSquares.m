function [ c, conditionNo] = leastSquares( x, y, n, basis )
    
    %Build matrix
    n1=n; %mantain n
    A=x;
    for n1 = 1:n1-1
        A=[A;x]; 
    end
    A=A'
    y
   
    
    if strcmp(basis,'monomial')==1
        %Apply monomial functions to columns
        for i = 1:n
            A(:,i)=A(:,i).^(i-1);
        end
        R=A  %'A' after the monomial functions are applied
    
    elseif strcmp(basis,'legendre')==1
        a=x(1)
        b=x(length(x))
        
        %Apply Legrendre functions to columns
        for i = 1:n
            for j = 1:length(x)
                t=(-1)+(2*((A(j,i)-a)/(b-a)))
                A(j,i)=Legendre(i,A(j,i))%should be t but doesnt work 
            end
        end
        R=A  %'A' after the legendre functions are applied
    else 
        error='Error: bad basis input pick monomial or Legendre polynomial'
    end
    
    
    
    RtR=R'*R
    Rty=R'*y

    %R'*R*c = Rt*b:
    [L, U, P] = lu(RtR);
    b = P * Rty;
    y2 = L\b;
    c = U\y2;
    
    conditionNo=cond(R)
end

