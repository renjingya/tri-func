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