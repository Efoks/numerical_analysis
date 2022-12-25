function X = rhs_matrix_symmetrical(A, h)
l=length(A);
X = zeros(l, 1);

if l <= 2
    error("Not enough values")
end

for k = 2:l-1
    X(k) = 6 * ((A(k+1,2) - A(k,2)) / h - ((A(k,2) -A(k-1,2)) / h));
end
return