function X = gradient(A, F, X0, atol)
if A ~= transpose(A)
    error('Matrix A is not symmetric')
end

atol = atol *atol;

p = A*X0 - F;
z = p;
zzk = dot(z, z);

r = A*p;
t = dot(z,p)/dot(r,p);
X = X0 - t.*p;
z = z - t.*r;
iter = 1;
zz = dot(z,z);

disp([iter, zz, norm(z - t.*r)])
disp(X)
while zz >= atol
    b = zz/zzk;
    zzk = zz;
    p = z + b*p;
    iter = iter + 1;

    r = A*p;
    t = dot(z,p)/dot(r,p);
    X = X - t*p;
    z = z - t*r;
    zz = dot(z,z);

    disp([iter, zz, norm(z - t.*r)])
    disp(X)
end



