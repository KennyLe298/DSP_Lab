
mode(0);
exec("common/stemplot.sci", -1);
exec("common/savefig.sci", -1);

Fs = 1000;
L  = 1024;
t  = 0 : 1/100000 : 0.03;
n  = 0 : 29;

xa = 3*cos(600*%pi*t) + 2*cos(1800*%pi*t);
xn = 3*cos(0.6*%pi*n) + 2*cos(0.2*%pi*n);    

delta = 10/(L-1);  // range is [-5, 5]
xq    = delta*floor(xn/delta); // truncation

figure(1); clf();

subplot(3,1,1);
plot(t, xa);
title("xa(t) = 3cos(600 pi t) + 2cos(1800 pi t)");
xlabel("t (s)"); ylabel("Amplitude"); xgrid();

subplot(3,1,2);
stemplot(n, xn, "x(n) = 3cos(0.6 pi n) + 2cos(0.2 pi n), Fs = 1000 Hz");

subplot(3,1,3);
stemplot(n, xq, "xq(n), 1024 levels, Delta = 10/1023");

savefig("add_ex1_10");

mprintf("  Delta = %e\n", delta);
mprintf("  max quantization error = %e  (bounded by Delta)\n", max(abs(xn - xq)));
mprintf("  max|xa(n/Fs) - x(n)| = %e\n", ..
        max(abs(3*cos(600*%pi*n/Fs) + 2*cos(1800*%pi*n/Fs) - xn)));
