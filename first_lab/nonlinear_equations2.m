x=-0:0.01:0.2;
y=@(x) exp(x.*(-27))-x;
y1=@(x) exp(-27*x);
plot(x,y(x))
grid on
a = 0;
b = 0.6;
o = omega(derivative_approximation(y1, 0.08), derivative_approximation(y1, 0.1));
epsilon = 0.001;
%ints = intervals(y,a,b,30);
%bi = bisection(y, a, b, y(a), y(b), epsilon, 1)
%re = relaxation(y1, 0.089, o, epsilon)
%new = newton(y, 0.3, epsilon)