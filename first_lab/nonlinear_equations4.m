x=-5:0.1:5;
y=@(x) 27*cos(x) - x;
y1=@(x) 27*cos(x);
plot(x,y(x))
grid on
epsilon = 0.000001;
a=1.4;
b=1.6;
o = omega(derivative_approximation(y1, b), derivative_approximation(y1, a));
%ints = intervals(y, -5, 5, 50)
%bi = bisection(y, a, b, y(a), y(b), epsilon, 1)
%re = relaxation(y1, 1.5, o, epsilon)
%new = newton(y, 1.5, epsilon)
