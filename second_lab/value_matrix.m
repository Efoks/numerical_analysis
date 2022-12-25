function X = value_matrix(f, i)
l = length(i);

if l <= 2
    error("Not enough values")
end

X = zeros(l, 2);%first argument, second value
for k=1:l
    X(k,:) = [i(k) f(i(k))];
end
return