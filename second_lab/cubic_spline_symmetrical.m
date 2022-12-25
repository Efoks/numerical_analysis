function X = cubic_spline_symmetrical(V)
l = length(V)-1;
h = V(2,1) - V(1,1);
X = zeros(l, 6); % xi, xi+1, y, e, g, h
A = coefficient_matrix_symmetrical(V(:,1), h);
R = rhs_matrix_symmetrical(V, h);
G = thomas(A, R);
E = e_matrix_symmetrical(V, G, h);
H = h_delta_matrix_symmetrical(V, G, h);
for k=1:l
    X(k,:) = [V(k,1) V(k+1,1) V(k,2) E(k) G(k)/2 H(k)];
end
return