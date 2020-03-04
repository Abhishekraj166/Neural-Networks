function sum1 = linregfuncgradwo(w0,w1,x,y)
sum =0;
for i=1:50
    sum = sum +2*(y(1,i)-(w0+w1*x(1,i)));
    sum1 = -sum;
end 
end 