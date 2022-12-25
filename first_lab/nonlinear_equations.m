x=-5:0.1:5;
y2=@(x) x.^2 - 1;
y=@(x) x.^2-exp(-27*x.^2);
y1=@(x) exp(-13.5*x.^2);
plot(x,y2(x))
grid on
a = 0;
b = 3;
epsilon = 0.00001;
o = omega(derivative_approximation(y1, 0.2), derivative_approximation(y1, 0.4));

%bi = bisection(y2, a, b, y2(a), y2(b), epsilon, 1)
%sor = SOR(y1,0.35,o,epsilon)
%new = newton(y, 0.2, epsilon)