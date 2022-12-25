lv = lotka_voltera(0.5,1,1.5,1)
lv0 = [1; 1];
t0 = 0;
T = 30;
TS = 3000;
N = 10000;
NS = 80000000;

v1 = vdp(1);
v1000 = vdp(1000);

%lotka_voltera

A = explicit_euler_sys(lv, lv0, t0, T, N);
plotic(t0,T,N,A);
plotpp(A);
% 
% A = runge_kutta_2nd_sys(lv, lv0, t0, T, N);
% plotic(t0,T,N,A);
% plotpp(A);
% 
% A = adams_sys(lv, lv0, t0, T, N);
% plotic(t0,T,N,A);
% plotpp(A);

%Van der Polio, miu = 1 (nestandi)
% 
% A = explicit_euler_sys(v1, lv0, t0, T, N);
% plotic(t0,T,N,A);
% plotpp(A);

% A = runge_kutta_2nd_sys(v1, lv0, t0, T, N);
% plotic(t0,T,N,A);
% plotpp(A);

% A = adams_sys(v1, lv0, t0, T, N);
% plotic(t0,T,N,A);
% plotpp(A);

%Van der Polio, miu = 1000 (standi)

% tic
% A = explicit_euler_sys(v1000, lv0, t0, TS, NS);
% ploticv(t0,TS,NS,A);
% %plotpp(A);
% toc
%A = runge_kutta_2nd_sys(v1000, lv0, t0, TS, NS);
%ploticv(t0,T,NS,A);
%plotpp(A);

%A = adams_sys(v1000, lv0, t0, TS, NS);
%ploticv(t0,T,NS,A);
%plotpp(A);