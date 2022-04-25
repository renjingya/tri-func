%% arcsin函数，输出角度，误差为1e-10，无错误提示,取值范围(-1 - 1)。
function [y] =MyArcsin(radian)  
    i=1;
     %% 每项多项式取值
    Polynomial=1;
     %% 多项式指数
    Index=radian;
     %% 多项式阶乘
    Factorial=1;
     %% 泰勒展开式求和
    TaylorExpansion=radian;
     %% 误差标志
    ErrorSymbol=1;
    %% n的阶乘
     FactorialN=1;
    %% 2*n的阶乘
     Factorial2N=1;
    
while ErrorSymbol>0
        for j=1:i
            FactorialN=FactorialN*j;
        end
        for j=1:2*i
            Factorial2N=Factorial2N*j;
        end
         %% 阶乘更新
         Factorial=Factorial2N/((2*i+1)*4^i*FactorialN*FactorialN);
         %% x次方更新
         Index=Index*radian*radian;
         %% 多项式取值更新
         Polynomial=Index*Factorial;
         %% 泰勒求和
         TaylorExpansion=TaylorExpansion+Polynomial;
         
         i=i+1;
         FactorialN=1;
         Factorial2N=1;
         %% 多项式值取绝对值
         if Polynomial>0
            ErrorSymbol=Polynomial;
         else
            ErrorSymbol=-Polynomial; 
         end
         %% 误差判断
         if ErrorSymbol>1e-10
            ErrorSymbol=1;
         else
            ErrorSymbol=0; 
         end
end

     y=TaylorExpansion/pi*180;
     
end

