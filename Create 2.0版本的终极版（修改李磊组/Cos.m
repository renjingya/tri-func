% cos(x) = 1 - x^2 / 2! + x^4 / 4! + ……

function Result= Cos(Input)
	Angle = pi * (Input / 180);	%输入转换为弧度	    
	Result = 0;  			
	Symbol = 1;			%符号			
	SubResult = 1;				
	Denominator = 0;		%展开项中各项的2k
	i=1;	
	
while abs(SubResult) >= 1e-6
    Result = Result + SubResult;			
    Symbol = -Symbol;
    Denominator = Denominator + 2;	
    SubResult = Symbol * Angle ^ Denominator / factorial(Denominator);
end

Result = roundn(Result,-2);


