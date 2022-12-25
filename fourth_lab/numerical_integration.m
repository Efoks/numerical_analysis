y = @(x) 1/x.^3;
a = 1;
b = 4;
N = [10 20 40 80];

disp('     iter       N        trap     trap_d     mid       mid_d')
for i=1:4
    x = a:(b-a)/N(i):b;
    disp([i N(i) trapezoidal(y, a, b, N(i), x) delta(y, a, b, N(i), 1) midpoint(y, a, b, N(i), x) delta(y, a, b, N(1), 2)])
end

ans = 15/32