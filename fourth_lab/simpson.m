function s = simpson(y, a, b, N)
x = a:(b-a)/N:b;

s = y(x(1)) + y(x(N+1));

f1 = 0;
f2 = 0;

for i=2:2:N
    f1 = f1 + y(x(i));
end

for i=3:2:N-1
    f2 = f2 + y(x(i));
end

s = s + 4*f1 +2*f2;
s = s * (a-b)/N /3;