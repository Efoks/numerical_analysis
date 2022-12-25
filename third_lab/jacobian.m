function X = jacobian(A, B, X0, atol)
sA = size(A);
sB = size(B);
if sA(1) ~= sA(2)
    error('Array dimensions does not mach')
end
if sB(2)~=1
    error('B matrix is not of length 1')
end
if sA(1)~=sB(1)
    error('Matrices A length and B height does not match')
end

for k=1:sA(1)
    sum = 0;
    for i=1:k-1
        sum = sum + abs(A(k,i));
    end
    for i=k+1:sA(1)
        sum = sum + abs(A(k,i));
    end
    if sum >= abs(A(k,k))
        error('Does not converge')
    end
end

Ak = zeros(sA(1), sA(2));
Bk = zeros(sB(1), sB(2));

for k=1:sA(1)
    Bk(k) = B(k)/A(k,k);
    for i=1:sA(1)
        if k==i
            continue
        end
        Ak(k,i) = A(k,i)/A(k,k);
    end
end


X = zeros(sA(1),1);
iter = 1;

for k=1:sA(1)
    X(k) = Bk(k);
    for i=1:k-1
        X(k) = X(k) - Ak(k,i)*X0(i);
    end
    for i=k+1:sA(1)
        X(k) = X(k) - Ak(k,i)*X0(i);
    end 
end

no = norm(X-X0);
ne = norm(A*X-B);
disp([iter, no, ne]);
disp(X);

while no > atol && ne > atol
    X0 = X;
    for k=1:sA(1)
        X(k) = Bk(k);
        for i=1:k-1
            X(k) = X(k) - Ak(k,i)*X0(i);
        end
        for i=k+1:sA(1)
            X(k) = X(k) - Ak(k,i)*X0(i);
        end
    end
    iter = iter + 1;
    no = norm(X-X0);
    ne = norm(A*X-B);
    disp([iter, no, ne]);
    disp(X);
end

