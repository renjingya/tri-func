function y=COS(x)
    precision=100;
    y=1;
    for i=1:precision
        y=y+(-1)^(i)*x^(2*i)/Factorial(2*i);
    end
end