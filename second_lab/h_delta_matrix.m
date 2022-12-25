function X = h_delta_matrix(V, G)
l=length(V)-1;
X = zeros(l, 1);
for k=1:l
    X(k) = (G(k+1)-G(k))/(6*(V(k+1,1)-V(k,1)));
end
return
