function X = e_matrix(V, G)
l=length(G);
X = zeros(l, 1);
h = V(2,1) - V(1,1);
X(1) = (V(2,2)-V(1,2))/h-(G(2)/6+G(1)*3)*h;
for k=2:l
    h = V(k, 1) - V(k-1,1);
    X(k) = X(k-1) + (G(k)+G(k-1))/2*h;
end
return