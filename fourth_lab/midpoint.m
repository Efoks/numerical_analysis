function F = midpoint(y, a, b, N, x)
F = 0;

for k=1:N
    F = F + y((x(k)+x(k+1))/2);
end

F = F * (b-a)/N;