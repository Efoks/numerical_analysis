function X = ploticv(t0, T, N, A)
t = linspace(t0, T, N+1);
plot(t,A(1,:))
hold on
grid on