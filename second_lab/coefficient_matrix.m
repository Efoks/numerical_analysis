function X = coefficient_matrix(i)
l = length(i);
step = i(2)-i(1);
simc = [step step*4 step];
X = zeros(l, 3);
X(1,2) = 1;
X(end,2) = 1;
for k=2:l-1
    X(k,:)=simc;
end
return
