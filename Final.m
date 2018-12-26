function[e,f] = Final(x,minr,maxr,minc,maxc,a,rpi, s1,s2) %% x is the vector consisting of the car patter, a is the arduino variable, rpi is the pi and s1 and s2 are the two servos. s1 is the horizontal servo connected to the pi and s2 is the vertical servo
writePosition(s1,(((180-minc)*60/180)+50));
writePosition(s2,((minr*45)/180)/180+(43/180));
count = 1;
e = 0;
f = 0;
pause(1)
for i = minc:maxc
    if (mod(count,2) == 0)
        j = minr
        while(j<=maxr)
             writePosition(s1,(((180-i)*60/180)+50));                    
             writePosition(s2,((j*45)/180)/180+(43/180));
             if (x(j,i) == 1)
                writeDigitalPin(a,'D13',1);
                e = e + 0.02;
             else
                writeDigitalPin(a,'D13',0);
                f = f + 0.02;
             end
             pause(0.02)
             j = j+1
        end
        count = count + 1; 
    else
        j = maxr
        while(j>=minr)
            writePosition(s1,(((180-i)*60/180)+50));
             writePosition(s2,((j*45)/180)/180+(43/180));
             if (x(j,i) == 1)
                writeDigitalPin(a,'D13',1);
                e = e + 0.02;
             else
                writeDigitalPin(a,'D13',0);
                f = f + 0.02;
             end
             pause(0.02)
             j = j-1
        end
        count = count + 1
        
    end
end
end

