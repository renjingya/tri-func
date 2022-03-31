function y= SIN(x)
    x= (x/180)*pi;
    precision=100;
    y=0;
    for i=1:precision
        y=y+(-1)^(i-1)*x^(2*i-1)/Factorial(2*i-1);
    end
end