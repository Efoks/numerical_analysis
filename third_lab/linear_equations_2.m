F = [2.34 2 0 0;
    2 2.34 2 0;
    0 2 2.34 2;
    0 0 2 2.34];
C = zeros(4);
for k=1:4
    C(k,k)=0.3;
end
A = F + 27*C;
v = [1;0;0;0];
atol = 0.0001;
power_method(A,v,atol);
power_method(inv(A),v,atol);
