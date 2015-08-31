
function newton()
    coefficients = input('Your coefficients?\n');
    error = input('Your abserror and itmax?\n');
    %show graph
    x=poly2sym([98 -280 235 -78 9]);
    ezplot(x)
    axis([0 2 -1 1]);
    guesses = input('Your guesses?\n');
    
    k=1;
    while k<=length(guesses)
        [p, pprime] = poly(coefficients, guesses(k));
        x0=guesses(k);
        x1= x0- p/pprime;
        index=0;
        disp(sprintf(' k | xk | f(xk)'));
        disp(sprintf('%2.0f | %18.14f | %20.12e',index, x0, x1));
        while abs(x1-x0)>error(1) && index<error(2)
            x0=x1;
            [p pprime] = poly(coefficients, x0);
            x1= x0- p/pprime;
            disp(sprintf('%2.0f | %18.14f | %20.12e', index, x0, x1));
            index=index+1;
        end
        if index >= error(2)
            disp(sprintf('No root was found'));
        else
            disp(sprintf('Found root, Initial Guess: %18.14f Iterations: %2.0f Root: %20.12e',guesses(k),index,x1));
        end
        k=k+1;
    end
end

