function X = power_method(A, V, atol)
if norm(V)~= 1
    error('norm of V is not equal to 1')
end

y = A*V;
lambdak = dot(y,V);
X = y / norm(y);
iter=1;
disp([iter, lambdak])
disp(X)

y = A*X;
lambda = dot(y,X);
X = y / norm(y);
iter = 2;
disp([iter, lambda])
disp(X)

while abs(lambda - lambdak) > atol
    lambdak = lambda;
    iter = iter + 1;
    y = A*X;
    lambda = dot(y,X);
    X = y / norm(y);
    disp([iter, lambda])
    disp(X)
end
