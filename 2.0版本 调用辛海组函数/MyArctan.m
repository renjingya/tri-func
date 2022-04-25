%% arctan函数，输出角度，误差为1e-10，无错误提示，取值范围(-1 - 1)。
function [y] =MyArctan(radian) 
    i=1;
     %% 取反标志
    Negation=1;
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
if radian<1&&radian>-1

while ErrorSymbol>0
         %% 阶乘更新
         Factorial=2*i+1;
         %% x次方更新
         Index=Index*radian*radian;
         %% 多项式正负号更新
         Negation=-Negation;
         %% 多项式取值更新
         Polynomial=Index/Factorial*Negation;
         %% 泰勒求和
         TaylorExpansion=TaylorExpansion+Polynomial;
         
         i=i+1;
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
else
    y='请输入（-1,1）之间的数字';
end
     
end

