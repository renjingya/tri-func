function func = arctan
func.arctan1 = @arctan1;
end
function x = arctan1(a)
 k=0;
 if(a==0)
     x=0;
 end
 if (a>0)
     i=0.1;
     while(1)
     ai=k;
      while(1)
          if(ai+i>pi/2)
              break;
          end
          if((sin(ai)/cos(ai)-a)*(sin(ai+i)/cos(ai+i)-a)==0)
              x=ai+i;
              break;
          end
           if((sin(ai)/cos(ai)-a)*(sin(ai+i)/cos(ai+i)-a)<0)
              break;
           end
          ai=ai+i;
      end
      if(i<0.0000000001)
          break;
      end
      i=i/10;
      k=ai;
     end
     x=(ai+ai+i)/2;
 end
 if (a<0)
       i=0.1;
     while(1)
      ai=k;
      while(1)
        
          if(ai-i>-pi/2)
              break;
          end
          if((sin(ai)/cos(ai)-a)*(sin(ai-i)/cos(ai-i)-a)==0)
              x=ai+i;
              break;
          end
           if((sin(ai)/cos(ai)-a)*(sin(ai-i)/cos(ai-i)-a)<0)
              break;
           end
          ai=ai-i;
      end
      if(i<0.0000000001)
          break;
      end
      i=i/10;
      k=ai;
     end
     x=(ai+ai-i)/2;
 end
end

