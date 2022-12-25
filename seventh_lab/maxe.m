function X = maxe(A, B, wt, wh)

if length(A) ~= length(B)
    error('Lengths of arrays are different')
end

if height(A) ~= height(B)
    error('Heights of arrays are different')
end

sz = size(A);

X = zeros(sz(1), sz(2));

for i = 1:sz(1)
    for j = 1:sz(2)
        X(i,j) = abs(A(i,j) - B(i,j));
    end
end

figure
[WT,WH] = meshgrid(wt,wh);
mesh(WT,WH,X')