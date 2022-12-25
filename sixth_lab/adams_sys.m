function X = adams_sys(f, y0, t0, T, N)
h = (T - t0)/N;
t = linspace(t0, T, N+1);
n = size(y0);
X = zeros(n(1), N+1);

beg = runge_kutta_2nd_sys(f, y0, t0, t0 + 3*h, 3);

for i = 1:n(1)
    for j = 1:4
        X(i,j) = beg(i,j);
    end
end

for i = 2:4
    X(i) = beg(i);
end

fn = f(t(4),X(:,4));
fn1 = f(t(3),X(:,3));
fn2 = f(t(2),X(:,2));
fn3 = f(t(1),X(:,1));

for i = 4:N
    for j = 1:n(1)
        X(j,i+1) = X(j,i) + h/24 * (55*fn(j) - 59*fn1(j) + 37*fn2(j) - 9*fn3(j));
    end
    fn3 = fn2;
    fn2 = fn1;
    fn1 = fn;
    fn = f(t(i+1),X(:,i+1));
end