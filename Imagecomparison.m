function [a] = Imagecomparison(x,y)
 %% assume a reduced size of 180x180x3 for the picam image vectors. x and y are the two images. One without the vehicle and one with the car in the same position
 
 a = zeros(180,180);
 
 for i = 1:180
     for j = 1:180
         if((abs(x(i,j,1)-y(i,j,1)) + abs(x(i,j,2)-y(i,j,2)) + abs(x(i,j,3) - y(i,j,3))) > 75) %%65  %%(abs(x(i,j,1)-y(i,j,1)) > 20 & abs(x(i,j,2)-y(i,j,2)) > 20 & abs(x(i,j,3) - y(i,j,3) > 20))
             a(i,j) = 1;
         else
             a(i,j) = 0;
         end
     end
 end
 figure();
 spy(a)
end