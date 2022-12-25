function X = coefficient_matrix(i)
l = length(i);
X = zeros(l, 3);
X(1,2) = 1;
for k=2:l-1
    h0 = i(k)-i(k-1);
    h1 = i(k+1)-i(k);
    X(k,:) = [h0 2*(h0+h1) h1] ;
end
return
