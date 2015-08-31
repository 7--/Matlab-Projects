function [ Ln ] = Legendre(j, t )
    if j==1
        Ln = 1;
    elseif j==2
        Ln=t;
    else
        Ln= ((2*j-3)/(j-1))*t  ...
            *Legendre(j-1,t) - ...
            ((j-2)/(j-1))*     ...
            Legendre(j-2,t);
    end 
end

