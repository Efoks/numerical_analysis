function X = explicit_euler_sys(f, y0, t0, T, N)
h = (T - t0)/N;
t = linspace(t0, T, N+1);
n = size(y0);
X = zeros(n(1), N+1);

for i = 1:n(1)
    X(i,1) = y0(i,1);
end

for i = 1:N
    fn = f(t(i),X(:,i));
    for j = 1:n(1)
        X(j,i+1) = X(j,i) + h * fn(j);
    end
end