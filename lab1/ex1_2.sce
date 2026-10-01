mode(0);
exec("common/stemplot.sci", -1);
exec("common/savefig.sci", -1);

A  = 3;
w0 = 100*%pi;
f0 = w0/(2*%pi); // 50 Hz
T0 = 1/f0; // 0.02 s
Fs = 300; // sampling rate
P  = 5; // number of periods to display
delta = 0.1; // quantization step

// 1. analog signal over 5 periods 
t  = 0 : T0/500 : P*T0; // dense grid so the curve looks continuous
xa = A*sin(w0*t);

// 2. sampling 
f  = f0/Fs; // digital frequency = 1/6
N  = 1/f; // fundamental period = 6 samples
n  = 0 : (P*N - 1); // 5 periods -> 30 samples
xn = A*sin(2*%pi*f*n);

// 3. quantization by truncation 
xq = delta*floor(xn/delta);

// results 
mprintf("  digital frequency f = %d/%d, fundamental period N = %d samples\n", 1, N, N);
disp("  x(n), one period:");   disp(xn(1:N));
disp("  xq(n), one period:");  disp(xq(1:N));
disp("  e(n) = x(n)-xq(n), one period:");  disp(xn(1:N) - xq(1:N));

// all three stages 
figure(1); clf();

subplot(3,1,1);
plot(t, xa);
title("xa(t) = 3sin(100*pi*t) - 5 periods");
xlabel("t (s)"); ylabel("Amplitude"); xgrid();

subplot(3,1,2);
stemplot(n, xn, "x(n), Fs = 300 Hz - 5 periods (N = 6 samples/period)");

subplot(3,1,3);
stemplot(n, xq, "xq(n), truncation, Delta = 0.1 - 5 periods");

savefig("lab1_ex2");
