nu = 1;
epoch =0;
t2=0;
m2=0;
hold on;
weight=[w00;w10;w20];

while (epoch<30)
    m2=0;
    for i1=1:1000
        input=[1;y(i1,1);y(i1,2)];
        output=(weight.')*input;
    if (output>=0)
        output1=1;
    else 
        output1=0;    
    end
    if (output1~=y(i1,3))
        weight = weight+nu*input*(y(i1,3)-output1);
        
    end 
    end
    w01 = weight(1,1);
    w11 = weight(2,1);
    w21 = weight(3,1);
    for i=1:1000
    x1 = s(i,1);
    x2 = s(i,2);
    t2 = w01+x1*w11+x2*w21;
    if(t2>=0)
        y1(i,1) =x1;
        y1(i,2) =x2;
        y1(i,3) =1;
        
    else
        
        y1(i,1) =x1;
        y1(i,2) =x2;
        y1(i,3) =0;
            
    end
    
    if y(i,3)~=y1(i,3)
        m2=m2+1;
    end 
    
    end
    epoch=epoch+1;
    eg(epoch,2)=m2;
    eg(epoch,1)=epoch;
    
end

figure(1)
xaxis=eg(1:epoch,1);
yaxis=eg(1:epoch,2);
plot(xaxis,yaxis,'b-x');