function X = runge_kutta_2nd_sys(f, y0, t0, T, N)
h = (T - t0)/N;
t = linspace(t0, T, N+1);
n = size(y0);
X = zeros(n(1), N+1);

for i = 1:n(1)
    X(i,1) = y0(i,1);
end

for i = 1:N
    k1 = f(t(i),X(:,i));
    k2 = f(t(i) + h, X(:,i) + h*k1);
    for j = 1:n(1)
        X(j,i+1) = X(j,i) + h/2 * (k1(j) + k2(j));
    end
end