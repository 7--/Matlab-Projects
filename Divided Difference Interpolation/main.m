function [  ] = main( )

    figure
    hold on
    y1=linspace(0,1);
    f1=@(x) x.^6;
    fz14=interp(linspace(0,1,5),f1,y1)
    fz18=interp(linspace(0,1,9),f1,y1)
    fz112=interp(linspace(0,1,13),f1,y1)
    axis([0,1,f1(0),f1(1)]);
    hold off
    
    figure
    hold on
    y2=linspace(0,2*pi);
    f2=@(x) sin(x);
    fz24=interp(linspace(0,2*pi,5),f2,y2)
    fz28=interp(linspace(0,2*pi,9),f2,y2)
    fz212=interp(linspace(0,2*pi,13),f2,y2)
    axis([0,2*pi,-1.5,1.5]);
    hold off
    
    figure
    hold on
    y3=linspace(0,2);
    f3=@(x) .45*(x<1) + .5*(x==1) + .55*(x>1);
    fz34=interp(linspace(0,2,5),f3,y3)
    fz38=interp(linspace(0,2,9),f3,y3)
    fz312=interp(linspace(0,2,13),f3,y3)
    axis([0,2,.4,.6]);
    hold off
    
    figure
    hold on
    y4=linspace(-1,1);
    f4=@(x) 1./(1 + 10*x.^2);
    fz44=interp(linspace(-1,1,5),f4,y4)
    fz48=interp(linspace(-1,1,9),f4,y4)
    fz412=interp(linspace(-1,1,13),f4,y4)
    hold off
    
end

