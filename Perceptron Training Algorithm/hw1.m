clear all;
clc;
w0 = (.5).*rand(1,1)-0.25
w1 = (2).*rand(1,1)-1
w2 = (2).*rand(1,1)-1
s = (2).*rand(1000,2)-1;
j = 0;
k = 0;
hold on;
for i=1:1000
    x1 = s(i,1);
    x2 = s(i,2);
    t = w0+x1*w1+x2*w2;
    if (t>=0)
        j = j+1;
        S1(j,1)=x1;
        S1(j,2)=x2;
        plot(x1,x2,'rx');
    else
        k = k+1;
        S0(k,1)=x1;
        S0(k,2)=x2;
        plot(x1,x2,'bo');
    end 
end
x1 = -1:0.1:1;
x2 = (-w0/w2)-(w1/w2)*x1;
plot(x1,x2);
hold off

