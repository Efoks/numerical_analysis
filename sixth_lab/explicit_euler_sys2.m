function X = explicit_euler_sys2(f, y0, t0, T, N)
h = (T - t0)/N;
t = linspace(t0, T, N+1);
n = 2;
X = zeros(n, N+1);

X(1,1) = y0(1,1);
X(2,1) = y0(2,1);

for i = 1:N
    X(1,i+1) = X(1,i) + h * f1(t(i), X(1,i), X(2,i));
    X(2,i+1) = X(2,i) + h * f2(t(i), X(1,i), X(2,i));
end
% 
% plot(t, X)
% hold on
% grid on