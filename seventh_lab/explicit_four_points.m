function X = explicit_four_points(u0m, un0, unM, f, a, wt, wh)

nh = length(wh);
nt = length(wt);
X = zeros(nt, nh);

for i = 1:nh
    X(1,i) = u0m(wh(i));
end

for i = 1:nt
    X(i,1) = un0(wt(i));
    X(i,end) = unM(wt(i));
end

for i = 2:nt
    for j = 2:nh-1
        tau = (wt(i)-wt(i-1));
        X(i,j) = tau * a^2 / (wh(j+1)-wh(j))^2 * (X(i-1, j-1) - 2 * X(i-1,j) + X(i-1,j+1)) + f(wh(j), wt(i)) * tau + X(i-1,j);
    end
end