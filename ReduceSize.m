function [c,d] = ReduceSize(x,y)  %% Give as input two images x and y and the output will be two images of reduced size as a 180x180x3 vector
c = imresize(x,[180 180]);
d = imresize(y,[180 180]);
end 
        
        
        
       


            
    