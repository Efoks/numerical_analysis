ua = @(x, t) exp(-pi^2*t) * sin(pi*x);

u0m = @(x) sin(pi * x);
un0 = @(t) 0;
unM = @(t) 0;
f = @(x,t) 0;

h = [4, 8, 16, 32];

format longg
% disp('                        h             tau = h^2/2                      row                tau = h^2/4                   row                  tau = h^2/8                     row')
% table_explicit(h, u0m, un0, unM, f, ua)

% disp('                        h             tau = h^2                        row                 tau = h^3                     row                  tau = h^4                       row')
% table_allen(h, u0m, un0, unM, f, ua)

wh = linspace(0, 1, h(3) + 1);
wt = linspace(0, 1, 6 * h(3)^2 + 1);

maxe(explicit_four_points(u0m, un0, unM, f, 1, wt, wh), matrix(ua, wt, wh), wt, wh);

figure
[WT,WH] = meshgrid(wt,wh);
V = explicit_four_points(u0m, un0, unM, f, 1, wt, wh);
mesh(WT,WH,V')