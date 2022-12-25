function X = max_e(A, B)

if length(A) ~= length(B)
    error('Lengths of arrays are different')
end

if height(A) ~= height(B)
    error('Heights of arrays are different')
end

X = 0;

sz = size(A);

for i = 1:sz(1)
    for j = 1:sz(2)
        if  X < abs(A(i,j) - B(i,j))
            X = abs(A(i,j) - B(i,j));
        end
    end
end