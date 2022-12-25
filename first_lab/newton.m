%newton method for nonlinear equations
function an = newton(f, x, ep)
h=@(x) x-f(x)/derivative_approximation(f, x);
xn = h(x);
an = h(xn);
i=1;
atol = an-xn;
display([i, xn, atol])
while abs(atol)>ep
    xn = an;
    an = h(xn);
    atol = an-xn;
    i=i+1;
    display([i, xn, atol])
end
return