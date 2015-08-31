function [  ] = Display_Least_Squares( input_args )
     x=[0 1 2 3 4];
     y=[1 1 1 4 3]';
     one=leastSquares([0 1 2 3 4], [1 1 1 4 3]', 1, 'monomial')
     two=leastSquares([0 1 2 3 4], [1 1 1 4 3]', 2, 'monomial')
     three=leastSquares([0 1 2 3 4], [1 1 1 4 3]', 3, 'monomial')
     four=leastSquares([0 1 2 3 4], [1 1 1 4 3]', 4, 'monomial')
     
     figure
     x1 = -20:.1:20;
     subplot(2,2,1);
     plot(x1, one(1,1)*x1.^0 ,x , y');
     axis( [-1 8 -1 10]);

     subplot(2,2,2);
     plot(x1, two(1,1)*x1.^0 + two(2,1)*x1.^1,x , y');
     axis( [-1 8 -1 10]);

     subplot(2,2,3);
     plot(x1, three(1,1)*x1.^0 +  three(2,1)*x1.^1 + three(3,1)*x1.^2,x , y');
     axis( [-1 8 -1 10]);

     subplot(2,2,4);
     plot(x1, four(1,1)*x1.^0 + four(2,1)*x1.^1 + four(3,1)*x1.^2 + four(4,1)*x1.^3,x , y');
     axis( [-1 8 -1 10]);
     
     %2
     %leastSquares([0 : .02 : 1], [0 : .02 : 1]'+1, 5, 'legendre')

end

