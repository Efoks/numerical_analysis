function X = implicit_euler(f, y0, t0, T, N)
h = (T - t0)/N;
t = linspace(t0, T, N+1);
X = zeros(1, N+1);
X(1) = y0;

for i = 1:N
    X(i+1) = fzero (@(yn) yn - X(i) - h * f(t(i+1), yn), X(i));
end

plot(t, X)
hold on
grid on