%此函数用于计算反正切函数,计算出的值是角度值，比如输入1，输出是45度
function x = arctan(a)
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
          if((SIN(ai)/COS(ai)-a)*(SIN(ai+i)/COS(ai+i)-a)==0)
              x=ai+i;
              break;
          end
           if((SIN(ai)/COS(ai)-a)*(SIN(ai+i)/COS(ai+i)-a)<0)
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
     x= (x/pi)*180;
     
 end
 if (a<0)
       i=0.1;
     while(1)
      ai=k;
      while(1)
        
          if(ai-i<-pi/2)
              break;
          end
          if((SIN(ai)/COS(ai)-a)*(SIN(ai-i)/COS(ai-i)-a)==0)
              x=ai+i;
              break;
          end
           if((SIN(ai)/COS(ai)-a)*(SIN(ai-i)/COS(ai-i)-a)<0)
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
     x= (x/pi)*180;
 end
end

