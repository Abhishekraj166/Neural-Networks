nu = 1;
epoch =0;
t2=0;
m2=0;
misclassification1=0;
r=0;
r1=0;
hold on;
weight=[w00;w10;w20];
x1 = -1:0.1:1;
x2 = (-w0/w2)-(w1/w2)*x1;
figure(1)
plot(x1,x2);
while (epoch<25)
    for i=1:1000
        input=[1;y(i,1);y(i,2)];
        output=(weight.')*input;
    if (output>=0)
        output1=1;
    else 
        output1=0;    
    end
    if (output1~=y(i,3))
        weight = weight+nu*input*(y(i,3)-output1);
        r1=r1+1;
    end 
    end
    w01 = weight(1,1);
    w11 = weight(2,1);
    w21 = weight(3,1);
    epoch=epoch+1;
end
for i=1:1000
    x1 = s(i,1);
    x2 = s(i,2);
    t2 = w01+x1*w11+x2*w21;
    if (t2>=0)
        
        y1(i,1) =x1;
        y1(i,2) =x2;
        y1(i,3) =1;
        plot(x1,x2,'rx');
    else
        
        y1(i,1) =x1;
        y1(i,2) =x2;
        y1(i,3) =0;
        plot(x1,x2,'bo');
    end
    if y(i,3)==y1(i,3)
        m2 = m2+1;
    end
end
misclassification1=1000-m2