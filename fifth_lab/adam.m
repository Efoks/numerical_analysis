function X = adam(f, y0, t0, T, N)
t = linspace(t0, T, N+1);
h = (T-t0)/N;
X = zeros(1, N+1);
X(1) = y0;

beg = runge_kutta(f, y0, t0, t0 + 3*h, 3);
for i = 2:4
    X(i) = beg(i);
end

for i = 4:N
    X(i+1) = X(i) + h/24 * (55*f(t(i),X(i)) - 59*f(t(i-1),X(i-1)) + 37*f(t(i-2),X(i-2)) - 9*f(t(i-3), X(i-3)));
end

plot(t, X)
hold on
grid on