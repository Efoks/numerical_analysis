function an = fixedpointiteration(f, x, epsilon, q)
a = f(x);
an = f(a);
atol = ((1-q)/q)*epsilon
i=1;
while abs(an-a)>=atol
    a = an;
    an = f(a);
    i=i+1;
end
return
