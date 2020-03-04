clear;
clc;
tic
x = 0.2;
y = 0.1;
funx = gradx(x,y);
funy = grady(x,y);
grad = [funx;funy];
eta = 0.01;
iterations = 0;
precision = 1/10000000;
maxIterations = 1000;
tempx = 0;
tempy = 0;
i=1;
while 1 
    tempx = x - eta*gradx(x,y);
    tempy = y - eta*grady(x,y);
    Y(i,1)= tempx;
    Y(i,2)= tempy;
    Y(i,3)= hw3func(tempx,tempy);
    iterations = iterations + 1;
    if iterations > maxIterations || abs(tempx-x) < precision && abs(tempy-y) < precision
        break;
    end 
    x = tempx;
    y = tempy;
    figure (1)
    hold on;
    plot(Y(i,1),Y(i,3),'or');
    plot(Y(i,2),Y(i,3),'xb');
    i=i+1;
    fun = hw3func(x,y);
end
timeElapsed=toc
