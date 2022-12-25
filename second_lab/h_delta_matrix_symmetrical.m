function X = h_delta_matrix_symmetrical(V, G, h)
l=length(V)-1;
X = zeros(l, 1);
for k=1:l
    X(k) = (G(k+1)-G(k))/(6*h);
end
return
