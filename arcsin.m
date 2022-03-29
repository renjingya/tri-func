%% arcsin()函数
%输入值是数，取值范围[-1，1]；输出值是度数，取值范围是[-90°，90°]
%调用了arctan()函数，根据它们之间的关系完成计算
function result_arcsin=arcsin(x)

   if x >= -1 &&x < -0.5
       result_arcsin = -arctan(sqrt(1 - x * x) / x) - 2 * arctan(1);

   elseif x >= -0.5 && x <= 0.5
       result_arcsin = arctan(x / sqrt(1 - x * x));

   elseif x > 0.5 && x <= 1 
       result_arcsin = -arctan(sqrt(1 - x * x) / x) + 2 * arctan(1);
   else 
           result_arcsin="INPUT ERROR!";
   end

end