w0 = 0.5;
w1 = 0.6;
w =[w0 w1];
i = linspace(1,50,50);
xi = i;
x1=ones(1,50);
x =[x1;xi];
ui= -1 + (1+1)*rand(50,1);
%y = i+ui';
y=Y'
wnew = y*(x'/(x*x'));
yreg = wnew(1,1)+wnew(1,2)*xi;
figure (1)
hold on;
plot(xi,y,'ob');
plot(xi,yreg);
  