
mode(0);
exec("common/stemplot.sci", -1);
exec("common/savefig.sci", -1);

figure(1); clf();

// (a) continuous-time: periodic with Tp = 2*pi/5
Tp = 2*%pi/5;
t  = 0 : Tp/500 : 2*Tp;
subplot(3,1,1);
plot(t, 3*cos(5*t + %pi/6));
title("(a) xa(t) = 3cos(5t + pi/6), Tp = 2pi/5 s");
xlabel("t (s)"); ylabel("Amplitude"); xgrid();

// (b) discrete-time, f = 5/(2*pi) is irrational -> never repeats
n1 = 0:59;
subplot(3,1,2);
stemplot(n1, 3*cos(5*n1 + %pi/6), "(b) x(n) = 3cos(5n + pi/6): not periodic");

// (e) discrete-time, periodic with N = 16
n2 = 0:31;
xe = cos(%pi*n2/2) - sin(%pi*n2/8) + 3*cos(%pi*n2/4 + %pi/3);
subplot(3,1,3);
stemplot(n2, xe, "(e) x(n): N = 16, samples 16..31 repeat samples 0..15");

savefig("add_ex1_3");

mprintf("  (a) Tp = %.4f s\n", Tp);
mprintf("  (e) max|x(n) - x(n+16)| = %e  (zero -> period is 16)\n", ..
        max(abs(xe(1:16) - xe(17:32))));
