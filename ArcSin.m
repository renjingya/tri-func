%% arcsin()
function result_arcsin=ArcSin(x)

   if x >= -1&&x < -0.5
       result_arcsin = -ArctTan(Sqr(1 - x * x) / x) - 2 * ArcTan(1);

   elseif x >= -0.5 && x <= 0.5
       result_arcsin = ArctTan(x / Sqr(1 - x * x));

   elseif x > 0.5 && x <= 1 
       result_arcsin = -ArctTan(Sqr(1 - x * x) / x) + 2 * ArctTan(1);
   else 
           print("INPUT ERROR!")
   end

end