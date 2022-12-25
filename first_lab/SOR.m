%successive over relaxation method for nonlinear equations
function an = SOR(f, x, o, ep)
h=@(x) (1-o)*x+o*f(x);
xn = h(x);
an= h(xn);
atol = an-xn;
i=1;
while abs(atol)>=ep
    xn = an;
    an = h(xn);
    atol = an-xn;
    display([i, xn, atol]);
    i=i+1;
end
return