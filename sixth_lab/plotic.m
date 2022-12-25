function X = plotic(t0, T, N, A)
t = linspace(t0, T, N+1);
plot(t,A)
hold on
grid on