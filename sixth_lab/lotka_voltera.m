function X = lotka_voltera(a,b,c,d)
X = @(t,y) [(a-b*y(2))*y(1); (-c+d*y(1))*y(2)];