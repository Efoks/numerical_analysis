function X = runge_kutta(f, y0, t0, T, N)
t = linspace(t0, T, N+1);
h = (T-t0)/N;
X = zeros(1, N+1);
X(1) = y0;

for i = 1:N
    k1 = f(t(i),X(i));
    k2 = f(t(i) + h/2, X(i) + h/2 * k1);
    k3 = f(t(i) + h, X(i) + h*(2*k2 - k1));
    X(i+1) = X(i) + h/6 * (k1 + 4*k2 +k3);
end

plot(t, X)
hold on
grid on