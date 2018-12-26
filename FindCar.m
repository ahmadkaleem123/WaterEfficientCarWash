function [a,b,c,d] = FindCar(x)   %% a is the minimum of the row, b is the maximum row, c is the minimum column, d is the maximum column and x is the vector containing the car pattern as 1s
a = 180;
b = 0;
c = 180;
d = 0;
for i = 1:180
    for j= 1:180
        if (x(i,j) == 1)
            if(i<a)
                a = i;
            end
            if(i>b)
                b = i;
            end
            break
        end
    end
end
for j = 1:180
    for i = 1:180
        if (x(i,j) == 1)
            if(j<c)
                c = j;
            end
            if(j>d)
                d = j;
            end
            break
        end
    end
end
            