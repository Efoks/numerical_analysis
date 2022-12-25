function X = allen_chen(u0m, un0, unM, f, a, wt, wh)

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
        h2 = (wh(j+1)-wh(j))^2;
        tau = wt(i)-wt(i-1);
        X(i,j) = (a^2 * (X(i-1, j-1) + X(i-1,j+1)) / h2 + f(wh(j), wt(i)) + X(i-1, j)/tau) / (1/tau + 2 * a^2 / h2);
    end
end