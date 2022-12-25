function X = displaying(me, f, y0, t0, T, N)

fn1 = me(f, y0, t0, T, N(1));
D = [N(i),(T - t0)/N(i), runge(ev(end))];

for i = 1:5
    fn = me(f, y0, t0, T, N(i));
    D = [N(i),(T - t0)/N(i), runge(ev(end))];
end