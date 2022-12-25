function X = rhs_matrix(A)
l=length(A);
X = zeros(l, 1);
h = A(2,1) - A(1,1);

if l <= 2
    error("Not enough values")
end

for k = 2:l-1
    X(k) = 6 * ((A(k+1,2) - A(k,2)) / (A(k+1,1) - A(k,1)) - ((A(k,2) -A(k-1,2)) / (A(k,1) - A(k-1,1)));
end
return