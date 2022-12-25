function X = matrix(f, wt, wh)

nh = length(wh);
nt = length(wt);
X = zeros(nt, nh);

for i = 1:nt
    for j = 1:nh
        X(i,j) = f(wh(j), wt(i));
    end
end