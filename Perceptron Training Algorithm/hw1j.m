nu = 1;
w00 = (2).*rand(1,1)-1;
w10 = (2).*rand(1,1)-1;
w20 = (2).*rand(1,1)-1;
j = 0;
k = 0;
j1=0;
k1=0;
m=0;
hold on;
for i=1:1000
    x1 = s(i,1);
    x2 = s(i,2);
    t = w0+x1*w1+x2*w2;
    if (t>=0)
        
        y(i,1) =x1;
        y(i,2) =x2;
        y(i,3) =1;
    else
        
        y(i,1) =x1;
        y(i,2) =x2;
        y(i,3) =0;
    end 
end
x1 = -1:0.1:1;
x2 = (-w0/w2)-(w1/w2)*x1;
plot(x1,x2);
for i=1:1000
    x1 = s(i,1);
    x2 = s(i,2);
    t1 = w00+x1*w10+x2*w20;
    if (t1>=0)
        
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
        m = m+1;
    end 
end
misclassification=1000-m