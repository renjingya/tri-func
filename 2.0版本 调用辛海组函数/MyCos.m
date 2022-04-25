%% cos函数，输入弧度，误差为1e-10，无错误提示，取值范围R。
function [y] = MyCos(radian)  
    i=0;
     %% 取反标志
    Negation=1;
     %% 每项多项式取值
    Polynomial=1;
     %% 多项式指数
    Index=1;
     %% 多项式阶乘
    Factorial=1;
     %% 泰勒展开式求和
    TaylorExpansion=1;
     %% 误差标志
    ErrorSymbol=1;

while ErrorSymbol>0
         %% 阶乘更新
         Factorial=Factorial*(i+1)*(i+2);
         %% x次方更新
         Index=Index*radian*radian;
         %% 多项式正负号更新
         Negation=-Negation;
         %% 多项式取值更新
         Polynomial=Index/Factorial*Negation;
         %% 泰勒求和
         TaylorExpansion=TaylorExpansion+Polynomial;
         
         i=i+2;
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
     y=TaylorExpansion;
end
end

