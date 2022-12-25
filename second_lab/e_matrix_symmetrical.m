function X = e_matrix_symmetrical(V, G, h)
l=length(G)-1;
X = zeros(l, 1);
X(1) = (V(2,2)-V(1,2))/h-G(2)*h/6;
for k=2:l
    X(k) = (V(k+1,2)-V(k,2))/h - G(k+1)*h/6 - G(k)*h/3;
end
return