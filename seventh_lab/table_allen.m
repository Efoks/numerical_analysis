function X = table_allen(h, u0m, un0, unM, f, ua)
l = length(h);
col = l*2 - 1;
X = zeros(l, col);

for i = 1:l
    X(i,1) = 1/h(i);
end

for i = 1:l
    wh = linspace(0, 1, h(i) + 1);
    for j = 2:2:col
        wt = linspace(0, 1, h(i)^(j/2+1) + 1);
        X(i,j) = max_e(allen_chen(u0m, un0, unM, f, 1, wt, wh), matrix(ua, wt, wh));
    end
end

for i = 2:l
    for j = 3:2:col
        X(i,j) = row(X(i-1, j-1), X(i,j-1));
    end
end