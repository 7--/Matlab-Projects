function [ fz ] = interp( x,f,z )
    %divided difference
    c = DivDif(x,f);
    
    %multiply coefficients by variables and x values
    syms q; 
    px = [c(1)];
    xs=1;
    for i=2:length(x)
       xs=xs*(q-x(i-1)); 
       px=[px,c(i)*xs(end)];  
    end
    
    %simplify px
    simp=0;
    for i=1:length(px)
        simp=simp+px(i);
    end

    p = sym2poly(simp);
    %solve for z's
    fz=zeros(1,length(z));
    for i=1:length(z)
        %fz(i)=subs(simp,z(i));
        fz(i)=polyval(p,z(i));
    end
    
    s=vpa(simp);
    %plot
    plot(z, f(z));
    ezplot(s,z);
    
    %calulate error
    maxError=0;
    for i=1:length(z)
        if abs(f(z(i))-subs(s,z(i))) > maxError
            maxError=abs(f(z(i))-subs(s,z(i)));
        end
    end
    maxError=simplify(maxError)
end

