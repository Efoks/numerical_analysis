function X = coefficient_matrix_symmetrical(i, h)
l = length(i);
simc = [h h*4 h];
X = zeros(l, 3);
X(1,2) = 1;
X(end,2) = 1;
for k=2:l-1
    X(k,:)=simc;
end
return
