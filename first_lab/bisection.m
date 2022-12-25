%bisection method for nonlinear equations
function X = bisection(f, a, b, fa, fb, epsilon, i)
X = (a+b)/2;
atol = b-a;
display([i, X, atol])
fX = f(X);
if fX==0
    return
end
if atol < epsilon
    return
else
    if fX*fa<0
        b=X;
        fb=fX;
    else
        a=X;
        fa=fX;
    end
    X = bisection(f, a, b, fa, fb, epsilon, i+1);
end