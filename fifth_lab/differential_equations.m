df=@(t,y) cos(y)/(1+t)-0.5*y.^2;
t0 = 0;
T = 1;
y0 = 0;
tspan = [0 1];
N = [10 20 40 80 160];

% [t,y] = ode45(df,tspan,y0);

% D = zeros(5,6);
% 
% fn1 = explicit_euler(df, y0, t0, T, N(1));
% 
% A = [N(1),(T - t0)/N(1), fn1(end), 0, 0, 0];
% for j = 1:6
%     D(1,j) = A(j);
% end
% 
% for i = 2:5
%     fn = explicit_euler(df, y0, t0, T, N(i));
%     r = runge(fn(end), fn1(end), 1);
%     ratio = D(i-1,4)/r;
%     A = [N(i),(T - t0)/N(i), fn(end), r, ratio, log2(ratio)];
%     for j = 1:6
%         D(i,j) = A(j);
%     end
%     fn1 = fn;
% end
% 
% legend({'N = 10','N = 20','N = 40','N = 80', 'N = 160'},'Location','southeast')
% format shortg
% disp('            N           h         sol      runge err       ratio         row')
% D(2,6) = 0;
% D


% D = zeros(5,6);
% 
% fn1 = implicit_euler(df, y0, t0, T, N(1));
% 
% A = [N(1),(T - t0)/N(1), fn1(end), 0, 0, 0];
% for j = 1:6
%     D(1,j) = A(j);
% end
% 
% for i = 2:5
%     fn = implicit_euler(df, y0, t0, T, N(i));
%     r = runge(fn(end), fn1(end), 1);
%     ratio = D(i-1,4)/r;
%     A = [N(i),(T - t0)/N(i), fn(end), r, ratio, log2(ratio)];
%     for j = 1:6
%         D(i,j) = A(j);
%     end
%     fn1 = fn;
% end
% 
% legend({'N = 10','N = 20','N = 40','N = 80', 'N = 160'},'Location','southeast')
% format shortg
% disp('            N           h         sol      runge err       ratio         row')
% D(2,6) = 0;
% D


% D = zeros(5,6);
% 
% fn1 = symmetrical_euler(df, y0, t0, T, N(1));
% 
% A = [N(1),(T - t0)/N(1), fn1(end), 0, 0, 0];
% for j = 1:6
%     D(1,j) = A(j);
% end
% 
% for i = 2:5
%     fn = symmetrical_euler(df, y0, t0, T, N(i));
%     r = runge(fn(end), fn1(end), 2);
%     ratio = D(i-1,4)/r;
%     A = [N(i),(T - t0)/N(i), fn(end), r, ratio, log2(ratio)];
%     for j = 1:6
%         D(i,j) = A(j);
%     end
%     fn1 = fn;
% end
% 
% legend({'N = 10','N = 20','N = 40','N = 80', 'N = 160'},'Location','southeast')
% format longg
% disp('                         N                        h                   sol                 runge err                      ratio                    row')
% D(2,6) = 0;
% D

% D = zeros(5,6);
% 
% fn1 = runge_kutta_2nd(df, y0, t0, T, N(1));
% 
% A = [N(1),(T - t0)/N(1), fn1(end), 0, 0, 0];
% for j = 1:6
%     D(1,j) = A(j);
% end
% 
% for i = 2:5
%     fn = runge_kutta_2nd(df, y0, t0, T, N(i));
%     r = runge(fn(end), fn1(end), 2);
%     ratio = D(i-1,4)/r;
%     A = [N(i),(T - t0)/N(i), fn(end), r, ratio, log2(ratio)];
%     for j = 1:6
%         D(i,j) = A(j);
%     end
%     fn1 = fn;
% end
% 
% legend({'N = 10','N = 20','N = 40','N = 80', 'N = 160'},'Location','southeast')
% format shortg
% disp('            N           h         sol      runge err       ratio         row')
% D(2,6) = 0;
% D

% D = zeros(5,6);
% 
% fn1 = adam(df, y0, t0, T, N(1));
% 
% A = [N(1),(T - t0)/N(1), fn1(end), 0, 0, 0];
% for j = 1:6
%     D(1,j) = A(j);
% end
% 
% for i = 2:5
%     fn = adam(df, y0, t0, T, N(i));
%     r = runge(fn(end), fn1(end), 4);
%     ratio = D(i-1,4)/r;
%     A = [N(i),(T - t0)/N(i), fn(end), r, ratio, log2(ratio)];
%     for j = 1:6
%         D(i,j) = A(j);
%     end
%     fn1 = fn;
% end

% legend({'N = 10','N = 20','N = 40','N = 80', 'N = 160'},'Location','southeast')
% format longg
% disp('                         N                        h                   sol                 runge err                      ratio                    row')
% D(2,6) = 0;
% D


D = zeros(5,6);

fn1 = bdf(df, y0, t0, T, N(1));

A = [N(1),(T - t0)/N(1), fn1(end), 0, 0, 0];
for j = 1:6
    D(1,j) = A(j);
end

for i = 2:5
    fn = bdf(df, y0, t0, T, N(i));
    r = runge(fn(end), fn1(end), 4);
    ratio = D(i-1,4)/r;
    A = [N(i),(T - t0)/N(i), fn(end), r, ratio, log2(ratio)];
    for j = 1:6
        D(i,j) = A(j);
    end
    fn1 = fn;
end

legend({'N = 10','N = 20','N = 40','N = 80', 'N = 160'},'Location','southeast')
format longg
disp('                         N                        h                   sol                 runge err                      ratio                    row')
D(2,6) = 0;
D