function d = delta(y, a, b, N, p)
d = abs(simpson(y, a, b, 2*N) - simpson(y, a, b, N))/(2.^p-1);