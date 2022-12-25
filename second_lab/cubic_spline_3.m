V = [0 209; 1 209; 2 0; 3 209; 4 209; 5 0]

C = cubic_spline_symmetrical(V)

xc = 1.5;

for k=1:length(C)-1
    x = C(k,1):0.01:C(k,2);
    y1=@(x) C(k,3) + C(k,4)*(x-C(k,1)) + C(k,5)*(x-C(k,1)).^2 + C(k,6)*(x-C(k,1)).^3;
    plot(x,y1(x))
    hold on

    if xc >= C(k,1) && xc <= C(k,2)
        aprox_y = y1(xc)
    end
end