% Thomas algorithm for tridiagonal matrices
function X = thomas(A, B)
szA = size(A);
X=zeros(szA(1), 1);
if szA(2)~=3
    error('Array A is not of length three')
end
szB = size(B);
if szB(2)~=1
    error('Array B is not of length one')
end
if szA(1)~=szB(1)
    error('Array heights do not match')
end
clear szB;
for i = 1:szA(1)
    if abs(A(i, 2))<abs(A(i, 1))+abs(A(i, 3))
        error('Sum of absolute values of a and c is smaller than the absolute value of b in row %d', i)
    end
end
is_strict = false;
for i = 1:szA(1)
    if abs(A(i, 2))>abs(A(i, 1))+abs(A(i, 3))
        is_strict = true;
        break
    end
end
if is_strict == false
    error('There is not a single instance of |b|>|a|+|c|')
end
clear is_strict;

co=zeros(szA(1),2);%first row is for C, second for D
co(1,1)=-A(1,3)/A(1,2);
co(1,2)=B(1)/A(1,2);
for k = 2:szA(1)-1
    den = A(k,1)*co(k-1,1)+A(k,2);
    co(k,1)=-A(k,3)/den;
    co(k,2)=(B(k)-A(k,1)*co(k-1,2))/den;
end
co(end,2)=(B(end)-A(end,1)*co(end-1,2))/(A(end,1)*co(end-1,1)+A(end,2));
X(end)=co(end,2);
for i = 1:szA(1)-1
    k=szA(1)-i;
    X(end-i)=co(k,1)*X(k+1)+co(k,2);
end
return