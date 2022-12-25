i = -3:0.6:3;
o = -3:0.01:3;
y=@(x) x+3*(cos(x)).^2;
plot(o, y(o))
hold on
grid on

xc = 2;
acc_y = y(xc)

V = value_matrix(y, i);
C = cubic_spline_symmetrical(V);
for k=1:length(C)
    x = i(k):0.01:i(k+1);
    y1=@(x) C(k,3) + C(k,4)*(x-C(k,1)) + C(k,5)*(x-C(k,1)).^2 + C(k,6)*(x-C(k,1)).^3;
    plot(x,y1(x))
    hold on

    if xc >= C(k,1) && xc <= C(k,2)
        aprox_y = y1(xc)
    end
end

pp = csape(V(:,1), V(:,2), 'v');
pp.coefs;
fnplt(pp)
grid on
hold on
csape_y = fnval(pp, 2)