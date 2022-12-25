function X = runge(y2h, yh, p)
X = abs(y2h - yh) / (2.*p - 1);