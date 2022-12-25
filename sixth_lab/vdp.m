function X = vdp(m)
X = @(t,y) [y(2); m*(1-y(1).^2)*y(2)-y(1)];