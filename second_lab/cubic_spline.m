function X = cubic_spline(V)
l = length(V)-1;
X = zeros(l, 6); % xi, xi+1, y, e, g, h
A = coefficient_matrix(V(:,1));
R = rhs_matrix(V);
G = tdma(A, R);
E = e_matrix(V, G);
H = h_delta_matrix(V,G);
for k=1:l
    X(k,:) = [V(k,1) V(k+1,1) V(k,2) E(k) G(k)/2 H(k)];
end
return