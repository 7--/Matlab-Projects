function [ c, table ] = DivDif( x, f )
    table = zeros([1 2*length(x)+((((length(x)-1)*(length(x)))/2))]);         %4 times the size of x fits everything
    for i=1:length(x)                        %put the x's in   
        table(i)=x(i);
    end
    for i=1:length(x)                        %put the y's in
        table(i+length(x))=f(x(i));
    end
   
    sub=1;
    index=1;
    num=length(x); %number of elemnts in column
    spacing=0;
    for i=(length(x)*2)+1:length(table)
       if index == num
           spacing=spacing+index;
           num=num-1;
           index=1;
           
       end
       
       distance=length(x)-num+1;
       numerator = table(index+length(x)+spacing)...
           -table(index+length(x)+spacing+1);
       den = table(index)-table(index+distance);
       
       table(i)=numerator./den;

       index=index+1;
       sub=sub+1;
    end
   table;
   
   c=[];%5 9 12 14 15
   i=length(x)+1;
   %c=[c,table(in)]
   in=length(x);
   while i<=length(table)
       c=[c,table(i)];
       i=i+in;
       in=in-1;
   end
 
end

