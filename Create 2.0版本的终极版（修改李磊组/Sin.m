%%%%%%%%%       sin函数求解过程          %%%%%%%%%%%%%%
%输入参数：角度
%输出参数：正弦值
function result=Sin(input_angle)
 if input_angle >= 0%正值角度计算
        angle = pi * (input_angle / 180);%角度转换为弧度		    
        result = 0;  %计算结果赋初值
        s = 1;%累加项符号					
        denominator = 1;%分母赋初值				
        numerator = angle;%分子赋初值			
        i=1;
        while numerator / denominator >= 1e-10%计算精度，利用sin泰勒展开式计算结果
            result = result + s * numerator / denominator;%累加一项
            numerator = numerator* angle * angle;%求下一项分子
            denominator = denominator * 2 * i * (2 * i + 1);%求下一项分母
            s =s * -1;%求下一项符号
            i = i + 1;
        end
    else%负值角度计算，运算过程与正值一样
        angle = pi * (abs(input_angle) / 180);
        result = 0;  
        s = 1;						
        denominator = 1;				
        numerator = angle;			
        i=1;
        while numerator / denominator >= 1e-10
            result = result + s * numerator / denominator;
            numerator = numerator* angle * angle;
            denominator = denominator * 2 * i * (2 * i + 1);
            s =s * -1;
            i = i + 1;
        end
        result = -result;
    end
    result = roundn(result,-2);%四舍五入保留两位小数
