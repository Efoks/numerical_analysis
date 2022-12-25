function F = trapezoidal(f, a, b, N, x)
F = f(x(1)) + f(x(N+1));

for k=2:N
    F = F + 2*f(x(k));
end

F = F * (b-a)/N /2;