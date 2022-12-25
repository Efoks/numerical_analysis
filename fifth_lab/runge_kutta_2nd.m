function X = runge_kutta_2nd(f, y0, t0, T, N)
t = linspace(t0, T, N+1);
h = (T-t0)/N;
X = zeros(1, N+1);
X(1) = y0;

for i = 1:N
    k1 = f(t(i),X(i));
    k2 = f(t(i) + h, X(i) + h*k1);
    X(i+1) = X(i) + h/2 * (k1 + k2);
end

plot(t, X)
hold on
grid on