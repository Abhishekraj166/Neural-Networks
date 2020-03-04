function p = Hessian(x,y)
    p = [(2*x^2+2*x*y-2*x+y^2-2*y+1)/((x^2)*(1-x-y)^2) 1/(1-x-y)^2 ;1/(1-x-y)^2 (2*y^2+2*x*y-2*y+x^2-2*x+1)/((y^2)*(1-x-y)^2) ]; 
end