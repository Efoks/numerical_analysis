x=-1:0.001:1;
y=@(x) x.^27-1+sin(27*x)-x;
y1=@(x) x.^27-1+sin(27*x);
plot(x,y(x))
grid on
a = -0.38;
b = -0.36;
epsilon = 0.0000001;
o = omega(0.25 , -0.709);
%ints = intervals(y, -5, 5, 500)
%bi = bisection(y, a, b, y(a), y(b), epsilon, 1)
%re = relaxation(y1, -0.36, o, epsilon)
%new = newton(y, -0.37, epsilon)