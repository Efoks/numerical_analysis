function fdx = derivative_approximation(f, x)
h = sqrt(eps(1));
fdx = (f(x+h)-f(x))/h;
return