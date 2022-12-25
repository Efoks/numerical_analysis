function X = bdf(f, y0, t0, T, N)
t = linspace(t0, T, N+1);
h = (T-t0)/N;
X = zeros(1, N+1);
X(1) = y0;

beg = runge_kutta(f, y0, t0, t0 + 3*h, 3);
for i = 2:4
    X(i) = beg(i);
end

for i = 4:N
    X(i+1) = fzero (@(yn) yn - (48*X(i) - 36*X(i-1) + 16*X(i-2) - 3*X(i-3) + 12*h*f(t(i+1),yn))/25, X(i));
end

plot(t, X)
hold on
grid on